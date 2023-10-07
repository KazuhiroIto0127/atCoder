n, m = gets.chomp.split(" ").map(&:to_i)
points = gets.chomp.split(" ").map(&:to_i)

players = []
n.times do |i|
  hash = {}
  choices = []
  array = gets.chomp.chars
  total = 0
  array.each_with_index do |result, i|
    if result == "o"
      total += points[i]
    else
      choices << points[i]
    end
  end
  hash[:point] = total + (i+1)
  hash[:choices] = choices.sort_by{ |a| -a }
  players << hash
end
players.each do |player|
  other_points = players.map{ |p| p[:point] } - [player[:point]]
  if other_points.all?{ |p| p < player[:point] }
    p 0
  else
    total = player[:point]
    player[:choices].each_with_index do |add_point, i|
      total += add_point
      if other_points.all?{ |p| p < total }
        p i+1
        break
      end
    end
  end
end
