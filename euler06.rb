def square_sum(nums)
  total = 0
  nums.each {|num| total += num }
  total*total
end

def sum_squares(nums)
  total = 0
  nums.each { |num| total += (num*num)}
  total
end

nums = (1..100)

p square_sum(nums) - sum_squares(nums)
