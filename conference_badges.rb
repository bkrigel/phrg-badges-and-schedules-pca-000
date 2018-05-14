def badge_maker(name)
  "Hello, my name is #{name}."
end


def batch_badge_creator(attendees)
  attendees.map { |attendee| badge_maker(attendee) }
end


def assign_rooms(attendees)
  attendees.each_with_index.collect do |attendee, i|
     "Hello, #{attendee}! You'll be assigned to room #{i+1}!"
  end
end


def printer(attendees)
    batch_badge_creator(attendees).each{|words| puts words}
    assign_rooms(attendees).each{|words| puts words}
end
