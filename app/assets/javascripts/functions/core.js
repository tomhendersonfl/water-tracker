function registerTabPanel(tabContainerId) {
  $(window).on('hashchange', function() {
    processTabChange(tabContainerId);
  });
  processTabChange(tabContainerId);

};


function processTabChange(tabContainerId) {
  var url = document.location.toString();
  if (url.match('#')) {
    $(tabContainerId + ' a[href=#' + url.split('#')[1] + ']').tab('show');
    $('html').animate({
      scrollTop: 0
    }, 'slow'); //IE, FF
    $('body').animate({
      scrollTop: 0
    }, 'slow'); //chrome, don't know if Safari works
  } else {
    // show the first tab
    var firstTab = $(tabContainerId + ' li>a')[0];
    //$(tabContainerId + ' a[href=#' + firstTab.href.split('#')[1] + ']').tab('show');
  }

  // With HTML5 history API, we can easily prevent scrolling!
  $(tabContainerId + ' a').on('shown.bs.tab', function(e) {
    if (window.history.pushState) {
      window.history.pushState(null, null, e.target.hash);
    } else {
      window.location.hash = e.target.hash; //Polyfill for old browsers
    }
  })
}


function notify(message, type, alignTo, placeFrom) {

  var align = alignTo || 'center',
    from = placeFrom || 'top';

  $.growl({
    message: message
  }, {
    type: type,
    allow_dismiss: false,
    label: 'Cancel',
    className: 'btn-xs btn-inverse',
    placement: {
      from: from,
      align: align
    },
    delay: 3000,
    animate: {
      enter: 'animated bounceIn',
      exit: 'animated bounceOut'
    },
    offset: {
      x: 20,
      y: 85
    }
  });
};
