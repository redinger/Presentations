$(document).ready(function() {
  var map = null;

  $.getJSON('devices', function(json) {
    $.each(json, function() {
      reading = this.device.last_reading.reading
      var latlng = new google.maps.LatLng(reading.latitude, reading.longitude);
      if(map == null) {
        var myOptions = {
          zoom: 10,
          center: latlng,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          navigationControl: true,
          mapTypeControl: true,
          scaleControl: true,
          scrollwheel: true
        }
        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
      }

      var marker = new google.maps.Marker({
           position: latlng,
           map: map, 
           title:this.device.name
       });
       
       $('a#' + this.device.id).data("latlng", latlng)
    });
  });
  
  $('a.center_map').livequery('click', function() {
    map.set_center($(this).data("latlng"))
  });
  
});
