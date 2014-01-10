class Integer
  def factors() (1..self).select { |n| (self % n).zero? } end
end

num_divisors = 0
triangle = 0

until num_divisors > 500
  triangle+=1
  num_divisors = (0..triangle).inject(0) { |res, num| res + num }.factors.count
end

p triangle
p num_divisors
