num = gets.chomp.to_i

wins = {}
num.times do |i|
  array = gets.chomp.chars
  wins[i+1] = array.count("o")
end

sorted_vals =  wins.sort_by { |k, v| [-v, k] }.to_h
puts sorted_vals.keys.join(" ")
