$('body').on('click', '[data-plan-action]', function(e) {
  var src = $(this);

  localStorage.setItem('planAction', src.data('plan-action'))
  localStorage.setItem('planSlot', src.data('plan-slot'));
});

$('body').on('click', '[data-user-action-step]', function(e) {
  var src = $(this),
    action = localStorage.getItem('planAction'),
    slot = localStorage.getItem('planSlot'),
    id = src.data('user-action-step'),
    url = '/plans/set_slot?slot=' + slot + '&id=' + id + '&user_action=' +
    action;

  //window.location.replace(url);
  var modalId = "#" + id + "Modal";
  $(modalId).modal();
});

$('body').on('click', '[data-select-user-action-step]', function(e) {
  var src = $(this),
    action = localStorage.getItem('planAction'),
    slot = localStorage.getItem('planSlot'),
    id = src.data('select-user-action-step'),
    url = '/plans/set_slot?slot=' + slot + '&id=' + id + '&user_action=' +
    action;

  window.location.replace(url);
});

$('body').on('click', 'a[data-show-strategy]', function(e) {
  var element = $(this),
    strategy = element.data('show-strategy');

  $('a[class*="action-step-available-' + strategy + '"]').removeClass(
    'action-step-available-' + strategy);

  $.get("/plans/show_more", {
      strategy: strategy
    },
    function(data, status) {
      $('a[data-show-strategy=' + strategy + ']').css('display', 'none');
    });



});
