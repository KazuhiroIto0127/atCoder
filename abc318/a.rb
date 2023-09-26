n,m,p = gets.split(" ").map(&:to_i)

total_moon = 0

rest_moon = n - m
if rest_moon >= 0
  total_moon += 1

  total_moon += rest_moon/p
end

p total_moon
