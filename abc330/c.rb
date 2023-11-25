#-------------
# 未解決
#-------------
d = gets.chomp.to_i

a = Math.sqrt(d).floor
b = Math.sqrt(d - a*a).floor
puts ((a*a)+(b*b)-d).abs
