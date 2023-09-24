num_array = gets.chomp.chars.map(&:to_i)

num_array.each_with_index do |n,i|
  if i == num_array.length - 1 then
    puts "Yes"
    break
  end

  unless num_array[i] > num_array[i+1]
    puts "No"
    break
  end
end
