$(document).ready(function(){
  ClickListener();
});


function ClickListener(){
  console.log('ClickListener....');
  
	$("a[class='nav']").on('click', function(e){
    var linkId = e.target.id;
    console.log(linkId + ' is clicked.');
    var arrayOfId = linkId.split("_");
    var id = arrayOfId[arrayOfId.length-1];
    var listId = '#li_' + id;
    
    
  });
  
}