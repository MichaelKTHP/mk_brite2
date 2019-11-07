class Event < ApplicationRecord
	
belongs_to :admin, class_name: "User"
has_many :attendances
has_many :attendees, through: :attendances


validates :title, length: { in: 5..140 }, presence: true
validates :start_date, presence:true
validate  :is_start_date_past?
validates :duration, presence: true, numericality: { only_integer: true }
validate  :is_duration_correct?
validates :description, length: { in: 20..1000 }, presence: true
validates :price, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 1000}
validates :location, presence:true


#Check if not in past
def is_start_date_past?
		if start_date != nil && start_date < Time.now
			errors.add(:start_date, "can't be in the past")
		end
	end



#Check if multiple of 5
def is_duration_correct?
		if duration !=nil && (duration <= 0 || (duration % 5) != 0 )
			errors.add(:duration, "duration must be a positive number and a multiple of 5 !")
		end			
	end



end


