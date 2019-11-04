User.destroy_all
puts "Users destroyed"
Event.destroy_all
puts "Event destroyed"
Attendance.destroy_all
puts "Attendances destroyed"
5.times do
User.create(email: "thp#{rand 1..10}@yopmail.com")
puts "User created"
end
