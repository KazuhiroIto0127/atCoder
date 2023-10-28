x, y = gets.split(" ").map(&:to_i)

# 上がり
if x < y
  if y-x>2
    puts "No"
  else
    puts "Yes"
  end
# 下り
else
  if x-y>3
    puts "No"
  else
    puts "Yes"
  end
end
