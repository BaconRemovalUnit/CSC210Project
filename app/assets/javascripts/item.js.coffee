$(document).ready ->

  $(document).bind "ajaxSuccess", "form.item_form", (event, xhr, settings) ->
    $item_form = $(event.data)
    $error_container = $("#error_explanation", $item_form)
    $error_container_ul = $("ul", $error_container)
    
    $("<tr>").html(xhr.responseJSON.name + " saved.").appendTo $item_form
    
    
    $('table tbody').append('<tr><td>' + xhr.responseJSON.name + '</td><td>' + xhr.responseJSON.username + '</td><td>' + xhr.responseJSON.price + '</td><td>' + xhr.responseJSON.description + '</td></tr>')
    
    
    if $("li", $error_container_ul).length
      $("li", $error_container_ul).remove()
      $error_container.hide()

  $(document).bind "ajaxError", "form.item_form", (event, jqxhr, settings, exception) ->
    $item_form = $(event.data)
    $error_container = $("#error_explanation", $item_form)
    $error_container_ul = $("ul", $error_container)
    $error_container.show()  if $error_container.is(":hidden")
    $.each jqxhr.responseJSON, (index, message) ->
      $("<li>").html(message).appendTo $error_container_ul