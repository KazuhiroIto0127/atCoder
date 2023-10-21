def hour(num)
  num%24
end

def work_time?(hour)
  9 <= hour && hour <= 17
end

hours = (0..23).to_a

n = gets.to_i
array = []

n.times do |i|
  array.push(gets.split(' ').map(&:to_i))
end

all_results = Array.new(hours.length, 0)

hours.each_with_index do |h,i|
  array.each do |a|
    if work_time?(hour(a[1] + h))
      all_results[i] = all_results[i] + a[0]
    end
  end
end

puts all_results.max
