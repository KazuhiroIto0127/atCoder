num = gets.chomp
abc_strings = gets.chomp

index =  abc_strings.index("ABC")
if index
  puts index + 1
else
  puts -1
end
