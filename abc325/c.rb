# ------
# 未解決
# ------
def exist_around_sensor?(h,w)
  [
   @array[h-1]&[w-1], @array[h-1]&[w], @array[h-1]&[w+1],
   @array[h]&[w-1],   @array[h]&[w],   @array[h]&[w+1],
   @array[h+1]&[w-1], @array[h+1]&[w], @array[h+1]&[w+1]
  ].any?
end

h,w = gets.split(" ").map(&:to_i)

@array = []
h.times do |h|
  @array.push(gets.chomp.split('').map{|x| x == '.' ? nil : true})
end

i = 0

h.times do |h|
  w.times do |w|
    if @array[h][w]
      i+=1
      exist_around_sensor?(h,w)
      @array[h][w] = i
    end
  end
end

p @array
