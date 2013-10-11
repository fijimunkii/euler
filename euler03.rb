require 'mathn'

def listThePrimes(x)
  0.upto(x).each do |num|
    puts num if num.prime?
  end
end

listThePrimes(600851475143)
