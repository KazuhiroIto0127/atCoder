num = gets.to_i
while num<1000 do
  if num.digits[2]*num.digits[1] == num.digits[0]
    p num
    exit
  end
  num = num + 1
end
