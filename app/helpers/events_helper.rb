module EventsHelper
	# returns an array of events sorted by descending going count
	# made custom helper because the count of going is gotten from the join table user_events
	def sort_popular_events(events)
		sorted_events = [] # will hold the array of sorted events
		events.each do |event| # make hash to sort by
			sorted_events << {event: event, count: event.going_count}
		end
		sorted_events = sorted_events.sort_by{ |k| k[:count]}.reverse # sort events by desc order of count
		sorted_events.map { |e| e[:event] } # return an array of only event objects
	end
end
