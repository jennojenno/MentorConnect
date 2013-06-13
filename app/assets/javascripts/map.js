function initMap() {
   var mapOptions = {
     center: new google.maps.LatLng(40.7736154, -73.9711057),
     zoom:12,
     mapTypeId: google.maps.MapTypeId.ROADMAP
     
   };

   
   map = new google.maps.Map($("#map-canvas2"), mapOptions);
  };
  //google.maps.event.addDomListener(window, 'load', initMap);


  function addUserMarker(latitude, longitude) {
    // var marker = new google.maps.Marker({
    //   position : new google.maps.LatLng(latitude, longitude), 
    //   map : map
    // });
  };