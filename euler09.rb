require 'mathn'

# b = 1
# 
# until b == 500 do
#   if (1000*(500-b) % (1000-b)) == 0
#     p "#{b} , #{1000*(500-b)/(1000-b)}"
#   end
#   b++
# end

(1..500).each do |num|
  if (1000*(500-num) % (1000-num)) == 0
    a = num
    b = 1000*(500-num)/(1000-num)
    c = Math.sqrt(a*a + b*b)
    p "a = #{a}, b = #{b}, c = #{c}"
    p "euler product = #{a*b*c}"
  end
end
