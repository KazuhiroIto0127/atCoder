n, x = gets.split(" ").map(&:to_i)
arrays = gets.split(" ").map(&:to_i)
puts arrays.select{|a| a<=x}.sum
