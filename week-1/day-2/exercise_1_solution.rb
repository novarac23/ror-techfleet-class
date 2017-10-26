puts "Enter first number: "
a = gets.chomp

puts "Enter second number: "
b = gets.chomp

if a.to_i > b.to_i
  puts "#{a} is bigger then #{b}"
else
  puts "#{b} is bigger then #{a}"
end

a = "10"
