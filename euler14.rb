length = 1
max_length = 1
number = 1

(2..1000001).each do |i|
  length = 1
  x = i
  while x != 1 do
    if x%2==0
      x /= 2
    else
      x = x*3+1
    end
    length += 1
  end
  if length > max_length
    max_length = length
    number = i
  end
end

p number
