# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	$form = $('#new_amv')
	$show_amv_form = $('#show_new_amv')
	$new_form = $('#new_amv_form')
	
	$show_amv_form.on "click", ->
		if $new_form.css("display") == "none"
			$('#amv_title').val ""
			$('#amv_link').val  ""
			$new_form.css("display", "inline")
			$show_amv_form.text "Ukryj forme dodawania nowego AMV"
		else
			$new_form.css("display", "none")
			$show_amv_form.text "Dodaj nowe AMV"

	$form.on "ajax:error", (e, xhr, status, error) ->
		return error;
 
	$form.on "ajax:success", (e, data, status, xhr) ->
		$new_form.css("display", "none")
		$show_amv_form.text "Dodaj nowe AMV"
		alert "AMV zostalo dodane"
	  