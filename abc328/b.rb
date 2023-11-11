n = gets.to_i
arrays = gets.split(" ").map(&:to_i)

total = 0

1.upto(n) do |i|
  if i >= 10 && i.to_s.chars.uniq.count != 1
    next
  end
  1.upto(arrays[i-1]) do |day|
    if (i.to_s + day.to_s).chars.uniq.count == 1
      total += 1
    end
  end
end

puts total
