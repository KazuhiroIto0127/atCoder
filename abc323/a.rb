num_array = gets.chomp.chars.map(&:to_i)

num_array.each.with_index(1) do |num, i|
  if i >= 2
    if (i)%2 == 0
      if num != 0
        puts "No"
        exit
      end
    end
  end
end
puts "Yes"
