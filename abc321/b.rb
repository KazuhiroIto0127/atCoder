n,x = gets.split(" ").map(&:to_i)
nums = gets.split(" ").map(&:to_i)

sorted_nums = nums.sort

min_val = sorted_nums[0..sorted_nums.length-2].sum
max_val = sorted_nums[1..sorted_nums.length-1].sum

if sorted_nums[0] == x
  p 0
elsif min_val < x && x <= max_val
  p x - min_val + sorted_nums[0]
else
  p -1
end
