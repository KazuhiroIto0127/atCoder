n = gets.chomp.to_i
strings = gets.chomp
uniq_strs = strings.chars.sort.uniq
sum = 0
uniq_strs.each do |s|
  sum = sum + strings.gsub(/[^#{s}]/, '_').split('_').uniq.max.length
end
puts sum

# hash={}
# n.times do |i|
#   if i==0
#     hash[strings[i]] = 1
#   elsif strings[i-1] == strings[i]
#     hash[strings[i]] = hash[strings[i]] + 1
#   end
#   hash[strings[i]]
# end
