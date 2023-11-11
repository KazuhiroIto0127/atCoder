# -------------------
# 実行速度が遅いTLEな解法
# -------------------
n, q = gets.split(" ").map(&:to_i)
strings = gets

q.times do |i|
  l,r = gets.split(" ").map(&:to_i)

  sliced_str = strings[l-1..r-1]
  puts sliced_str.length - sliced_str.squeeze.length
end
