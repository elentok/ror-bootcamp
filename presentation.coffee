Keys =
  left: 37
  up: 38
  right: 39
  down: 40

class Presentation
  constructor: ->
    @pages = $('section')
    @pager = $('#pager')
    @select(@pages.first())

    $(window).keydown (e) =>
      if e.keyCode in [Keys.up, Keys.left]
        @prev()
      else if e.keyCode in [Keys.down, Keys.right]
        @next()
        
  next: ->
    next = @active.next()
    next = @pages.first() if next.length is 0
    @select(next) if next.length > 0

  prev: ->
    prev = @active.prev()
    prev = @pages.last() if prev.length is 0
    @select(prev) if prev.length > 0

  select: (page) ->
    @active.removeClass('active') if @active?
    @active = page.addClass('active')

    index = @pages.index(@active)
    @pager.html "#{index+1} of #{@pages.length}"


$(document).ready ->
  window.presentation = new Presentation()
