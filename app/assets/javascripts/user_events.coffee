# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load' , ->
	$(document).on 'click', '.save-event-button', ->
		_this = this
		console.log $(this).data('saved')
		console.log !$(this).data('saved')
		data = {saved: !$(this).data('saved'), event_id: $(this).data('eventid')}
		# route to user_events save_changes controller action
		$.post '/user-event-interaction', data, (object) ->
			$(_this).data('saved', object.user_event.saved)
			$(_this).attr('data-saved', object.user_event.saved)
			if object.user_event.saved
				$(_this).attr('src', object.saved_img)
			else
				$(_this).attr('src', object.img)

	# $(document).on 'click', '.buy-link', ->
		
			

