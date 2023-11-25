n = gets
array = gets.split(" ").map(&:to_i)
array.delete(array.max)
puts array.max
