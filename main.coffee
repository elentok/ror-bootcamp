$(window).ready ->
  $('.contents').remove()
  $('.primary-title').click ->
    $('.section').toggle()

  headings = $('.section > h1, .section > h2, .section > h3')
  for heading in headings
    new SectionHeading($(heading))

  if window.location.hash
    section = $(window.location.hash)
    section.show()
    section.parents('.section').show()

class SectionHeading
  constructor: (@heading) ->
    @section = @heading.parent()
    @heading.addClass('section-heading')
    @heading.remove().insertBefore(@section)
    @section.hide()
    anchor = @heading.find('a')
    anchor.attr('href', '#' + @section.attr('id'))
    anchor.click (e) =>
      @section.toggle()
      e.preventDefault() unless @section.is(':visible')

