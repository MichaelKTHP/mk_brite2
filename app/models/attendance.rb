class Attendance < ApplicationRecord
after_create :welcome_send

 def welcome_send
    UserMailer.attend_welcome_email(self).deliver_now
  end

belongs_to :attendee, class_name: "User"
belongs_to :event
end
