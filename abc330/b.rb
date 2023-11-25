n, l, r = gets.split(" ").map(&:to_i)
arrays = gets.split(" ").map(&:to_i)

new_array = arrays.map do |a|
  if l < a && a < r
    a
  elsif a < r
    l
  else
    r
  end
end
puts new_array.join(" ")
