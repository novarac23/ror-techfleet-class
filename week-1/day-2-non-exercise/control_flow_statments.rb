unless 5 < 1
  puts "THIS IS SO AWESOME"
end

unless 5 > 1
  puts "This will not get executed"
end

if 5 > 1
  puts "Do something here"
elsif 4 < 3
  puts "Do something else1"
elsif 1 < 3
  puts "Do something else2"
elsif 4 > 3
  puts "Do something else3"
else
  puts "Well I am here"
end

awesome_name = "spiderman"

case awesome_name
when "papa johns"
  puts "Pizza"
when "nik"
  puts "basketball"
when "spiderman"
  puts "super hero"
else
  puts "nothing worked"
end
