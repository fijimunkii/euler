require 'numbers_and_words'

num_letters = 0

words = (1..1000).map { |num| num.to_words hundreds_with_union: true }

words.each do |word|
  num_letters += word.gsub(' ','').gsub('-','').split('').count
end

p num_letters
