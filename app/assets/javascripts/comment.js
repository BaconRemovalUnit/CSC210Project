$(document).ready(function(){

	ClickListener();
});

function ClickListener(){
	console.log('ClickListener');
	$("a").unbind('click');
	$("a[class='Comment']").on('click', function(e){
		e.preventDefault();
		var linkId = e.target.id;
		var arrayOfId = linkId.split("_");
		var id = arrayOfId[arrayOfId.length-1];
		var taskId = '#task_form_' + id;
		console.log(taskId);
		var link = document.getElementById(e.target.id);
		var link_label = link.innerHTML;
		if (link_label == "New Comment" ){
			$(taskId).show();
			$(taskId).slideDown(350);
			link.innerHTML ='Hide';
			 			
		}
		else{
			$(taskId).hide();
			$(taskId).slideUp(350);
			
			link.innerHTML ='New Comment';
			return false;  
		}
		
	});
	
	$("input[class = 'createcomment']").on('click', function(e){
		
		var buttonId = e.target.id;
		var arrayOfId = buttonId.split("_");
		var id = arrayOfId[arrayOfId.length-1];
		var taskId = '#task_form_' + id;
		var commentbuttonid = 'new_comment_' + id;
		var commentbutton = document.getElementById(commentbuttonid);
		$(taskId).hide();
		$(taskId).slideUp(350);
		
		console.log(commentbuttonid);
		console.log(commentbutton);
		commentbutton.innerHTML ='New Comment';		
		console.log("Automatic change");
	});

	
}