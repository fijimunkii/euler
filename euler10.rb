require 'mathn'

p Prime.each(2000000).inject(0) {|res, num| res + num}
