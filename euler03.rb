require 'mathn'


# while true
#   p cur_num
#   if num % cur_num == 0
#     p 'divisible'
#     if cur_num.prime?
#       p cur_num
#       break
#     end
#   end
#   cur_num += 1
# end

num = 600851475143
divisor = 2

while num > divisor
  if num % divisor == 0
    num = num / divisor
    divisor = 2
  else
    divisor += 1
  end
end

p divisor
