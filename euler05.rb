def div_check(number)
  [20,19,18,17,16,15,14,13,12,11].each do |num|
    return false if number % num != 0
  end
  true
end

cur_num = 1

while !div_check(cur_num)
  cur_num += 1
end

p cur_num
