  // jQuery plugin
$(function() {
  $('.notify').change(function(event) {
    var alertText = `#notify_text_${event.target.id.split("_").splice(-3,1)[0]}`
    document.getElementById("notify-body").innerHTML = $(alertText).val();
    var modal = document.getElementById('notifyModal');
    modal.style.display = "block";
  });
});

(function($){
  $.fn.radioSelectGroup = function(options){
    return this.each(function(){
      var $container = $(this);
      var $labels = $container.children('label.radio');
      var selectedValue = 0;
      // var onChange = (typeof options.onChange === 'function')? options.onChange: function(){};
      var name = $container.data('name');

      var setSelectedValue = function(val, $input){
        selectedValue = val;
        $labels.filter('.active').removeClass('active');
        $input.closest('label').addClass('active');
        $container.data('value', val);
        // onChange(name, val);
      };

      $labels.each(function(i, el){
        var $label = $(el);
        var $input = $label.find('input');
        var val = $input.val();

        var title = $input.attr('title');
        if(!title) title = val;

        $label.append( title );
        // setSelectedValue( val, $input);

        $input.on('change', function(evt){
          setSelectedValue( val, $input);
        });
      });

      var $preSelectedInput = $container.find(':checked:eq(0)');
      var preSelectedValue = $preSelectedInput.val();
      if( preSelectedValue ){
        setSelectedValue(preSelectedValue, $preSelectedInput);
      }

    });
  };
})(jQuery);

