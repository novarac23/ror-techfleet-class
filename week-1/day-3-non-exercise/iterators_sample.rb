elements = ["water", "ice", "fire", "wind", "earth"]

elements.each do |element|
  puts element + " is a basic element."
end

numbers = [1, 2, 3, 4, 5]

result = numbers.reduce { |n, sum| n + sum }
puts result
