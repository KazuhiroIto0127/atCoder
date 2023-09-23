str = gets.chomp

def is_palindrome(str)
  str == str.reverse
end

def select_str(str, max)
  num = str.length - max - 1 # 1,2,3,4...

  0.upto(num) do |i|
    if is_palindrome(str[i..max+i])
      p max+1
      exit
    end
  end
end

(str.length-1).downto(0) do |i|
  select_str(str, i) # n, n-1, n-2...
end
