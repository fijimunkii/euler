super_num = 2**1000

p super_num.to_s.split('').inject(0) { |res, num| res + num.to_i }
