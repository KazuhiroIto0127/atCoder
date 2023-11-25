n, m = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)

keys = (1..n).to_a
values = Array.new(n).fill(0)
hash = Hash[*[keys, values].transpose.flatten]
array.each do |a|
  hash[a]+=1
  puts hash.key(hash.values.max)
end
# p hash
