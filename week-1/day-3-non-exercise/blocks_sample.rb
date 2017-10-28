def my_method
  puts "top"
  yield
  puts "Bottom"
end

my_method do
  puts "IN BETWEEEEEEN1"
  puts "IN BETWEEEEEEN2"
  puts "IN BETWEEEEEEN3"
  puts "IN BETWEEEEEEN4"
  puts "IN BETWEEEEEEN5"
  puts "IN BETWEEEEEEN6"
  puts "IN BETWEEEEEEN7"
end
