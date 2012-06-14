# A sample Guardfile
# More info at https://github.com/guard/guard#readme

#guard 'markdown', 
  #:convert_on_start => true, 
  #:kram_ops => { 
    #:toc_levels => [2, 3, 4, 5],
    #:template => 'template.erb'
  #} do  
	#watch (/(.+\/)*(.+\.)(md|markdown)/i) { |m| "#{m[1]}#{m[2]}#{m[3]}|./#{m[1]}#{m[2]}html"}
#end

def html_file(matchdata)
  file = matchdata[1]
  File.join( File.dirname( file ).to_s, File.basename(file, File.extname(file)) + '.html')
end

guard :shell do
  watch( /(.+\/)*(.*\.rst)$/ ) { |m|
    #system "./rst2html-pygments.py --template=template.txt --link-script=http://code.jquery.com/jquery.min.js --stylesheet=style/style.css,style/highlight.css,style/ptserif.css --link-stylesheet #{m[1]} #{html_file(m)}"
    #system "scripts/rst2html-pygments.py --template=scripts/template.txt  #{m[1]} #{html_file(m)}"
    system "scripts/build #{m[1]}"
  }
end

guard 'livereload' do
  watch(%r{.+\.(css|js|html)})
end
