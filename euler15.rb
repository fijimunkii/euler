# http://en.wikipedia.org/wiki/Binomial_coefficient

grid_size = 20
paths = 1
i = 0

while i < grid_size
  paths *= (2 * grid_size) - i
  paths /= i + 1
  i += 1
end

p paths
