n,m = gets.split(" ").map(&:to_i)
s = gets.chomp
t = gets.chomp

if t.start_with?(s) && t.end_with?(s) then
  puts 0
elsif t.start_with?(s) then
  puts 1
elsif t.end_with?(s) then
  puts 2
else
  puts 3
end
