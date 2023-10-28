# 未解決 TLEになる
n,m = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i).sort

limit_range = m-1
max_present = 0

array.length.times do |num|
  temp_present = 0
  for i in num+1..array.length-1 do
    if array[i] - array[num] <= limit_range
      temp_present += 1
    else
      next
    end
  end

  if max_present < temp_present
    max_present = temp_present
  end
end

puts max_present+1
