require 'date'

start = Date.new(1901,1,1)
finish = Date.new(2000,12,31)

p ( (start)..(finish) ).select{ |day| day.sunday? && day.day == 1 }.count
