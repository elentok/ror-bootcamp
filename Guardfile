# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'markdown', 
  :convert_on_start => true, 
  :kram_ops => { 
    :toc_levels => [2, 3, 4, 5],
    :template => 'template.erb'
  } do  
	watch (/(.+\/)*(.+\.)(md|markdown)/i) { |m| "#{m[1]}#{m[2]}#{m[3]}|./#{m[1]}#{m[2]}html"}
end

guard 'livereload' do
  watch(%r{.+\.(css|js|html)})
end
