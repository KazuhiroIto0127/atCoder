n,m = gets.split(" ").map(&:to_i)
fire_days = gets.split(" ").map(&:to_i)
answers =  Array.new(n)

fire_days.each do |fire_day|
  answers[fire_day-1] = 0
end

i = 1
answers.reverse.each_with_index do |answer, index|
  if answer == nil then
    answers[n-index-1] = i
    i += 1
  else
    i = 1
  end
end

answers.each do |answer|
  puts answer
end
