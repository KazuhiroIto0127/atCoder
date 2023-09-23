a,b = gets.split(" ").map(&:to_i)

a_a = 1
b.times do
  a_a = a_a * a
end

b_a = 1
a.times do
  b_a = b_a * b
end

pp a_a + b_a
