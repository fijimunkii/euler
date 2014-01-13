p (1..100).inject(:*).to_s.split('').inject(0){ |res, num| res + num.to_i }
