class User < ApplicationRecord
 
  has_many :events, foreign_key: 'admin_id', class_name: "Event"# can be an admin of many events
  has_many :attendances, foreign_key: 'attendee_id', class_name: "Attendance"
  has_many :events, through: :attendances #can participate to many events"
end

