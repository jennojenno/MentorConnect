// $( "#accordion" ).accordion({ active: 2 });

// var active = $( "#accordion" ).accordion( "option", "active" );
 
 
// // setter
// $( "#accordion" ).accordion( "option", "active", 2 );


$(function() {
  $( "#accordion" ).accordion({
    heightStyle: "content",
    active: false,
    collapsible: true
  });
});