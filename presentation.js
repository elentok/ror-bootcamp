// Generated by CoffeeScript 1.3.1
(function() {
  var Keys, Presentation;

  Keys = {
    left: 37,
    up: 38,
    right: 39,
    down: 40
  };

  Presentation = (function() {

    Presentation.name = 'Presentation';

    function Presentation() {
      var _this = this;
      this.pages = $('section');
      this.pager = $('#pager');
      this.select(this.pages.first());
      $(window).keydown(function(e) {
        var _ref, _ref1;
        if ((_ref = e.keyCode) === Keys.up || _ref === Keys.left) {
          return _this.prev();
        } else if ((_ref1 = e.keyCode) === Keys.down || _ref1 === Keys.right) {
          return _this.next();
        }
      });
    }

    Presentation.prototype.next = function() {
      var next;
      next = this.active.next();
      if (next.length === 0) {
        next = this.pages.first();
      }
      if (next.length > 0) {
        return this.select(next);
      }
    };

    Presentation.prototype.prev = function() {
      var prev;
      prev = this.active.prev();
      if (prev.length === 0) {
        prev = this.pages.last();
      }
      console.log(prev);
      if (prev.length > 0) {
        return this.select(prev);
      }
    };

    Presentation.prototype.select = function(page) {
      var index;
      if (this.active != null) {
        this.active.removeClass('active');
      }
      this.active = page.addClass('active');
      index = this.pages.index(this.active);
      return this.pager.html("" + (index + 1) + " of " + this.pages.length);
    };

    return Presentation;

  })();

  $(document).ready(function() {
    return window.presentation = new Presentation();
  });

}).call(this);
