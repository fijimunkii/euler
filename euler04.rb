first_num = 999
sec_num = 999

largest_palindrom = 0

# while first_num > 0
#   while sec_num > 0
#     result = first_num * sec_num
#     result_string = result.to_s.split('')
#     num_chars = result_string.length
#     if num_chars % 2 == 0
#       first_half = result_string.slice(0, num_chars/2)
#       sec_half = result_string.slice(num_chars/2, num_chars)
#       if first_half == sec_half.reverse
#         p "#{first_num} * #{sec_num}"
#         new_palindrom = first_num * sec_num
#         largest_palindrom = new_palindrom if largest_palindrom < new_palindrom
#       end
#     else
#       first_half = result_string.slice(0, num_chars/2-1)
#       sec_half = result_string.slice(num_chars/2+1, num_chars)
#       if first_half == sec_half.reverse
#         p "#{first_num} * #{sec_num}"
#         new_palindrom = first_num * sec_num
#         largest_palindrom = new_palindrom if largest_palindrom < new_palindrom
#       end
#     end
#     sec_num -= 1
#   end
#   sec_num = 999
#   first_num -= 1
# end

while first_num > 0
  while sec_num > 0
    result = first_num * sec_num
    if result.to_s.reverse.to_i == result
      new_palindrom = first_num * sec_num
      largest_palindrom = new_palindrom if largest_palindrom < new_palindrom
    end
    sec_num -= 1
  end
  sec_num = 999
  first_num -= 1
end


p largest_palindrom
