module ApplicationHelper

	def is_event_admin?(admin)
    current_user.id == admin.id
    end
     def attending_event?
    Event.find(params['id']).attendees.ids
    end
end
