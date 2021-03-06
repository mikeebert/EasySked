# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t = Week.last.start_date.next_week
w = Week.last.week_of_year

52.times do  
  if w == 53
    w = 1
  end
  
  Week.create(start_date:t, week_of_year:w)
  
  t = t.next_week
  w = w + 1
  
end

