Keys =
  left: 37
  up: 38
  right: 39
  down: 40

class Presentation
  constructor: ->
    @pages = $('section')
    @pager = $('#pager')

    @autoSelectByHash()

    $(window).keydown (e) =>
      return if e.altKey
      if e.keyCode in [Keys.up, Keys.left]
        @prev()
      else if e.keyCode in [Keys.down, Keys.right]
        @next()

    $(window).click (e) =>
      console.log e

    $(window).bind 'touchstart', (e) =>
      x = e.originalEvent.touches[0].pageX
      width = $(document).width()
      if x <= 0.2 * width
        @prev()
      else if x >= 0.8 * width
        @next()

  autoSelectByHash: ->
    url_index = document.location.hash.substring(1)
    console.log "URL INDEX = #{url_index}"
    if url_index.length > 0
      url_index = parseInt(url_index, 10)
      @select(@pages.eq(url_index-1))
    else
      @select(@pages.first())

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
    window.history.replaceState({index: index+1}, "Page #{index+1}", "##{index+1}")


$(document).ready ->
  window.presentation = new Presentation()
