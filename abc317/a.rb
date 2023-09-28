n, h, x = gets.split(" ").map(&:to_i)
potions = gets.split(" ").map(&:to_i)

n.times do |i|
  if x <= h+potions[i]
    p i+1
    break
  end
end
