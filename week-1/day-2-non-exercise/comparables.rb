a = "something"
b = 1
c = nil
d = false
e = 5
f = true


# && operator only works if BOTH values are true

puts "&& operator --------"

if a && b
  puts "I AM TRUE"
else
  puts "I AM false"
end

if a && d
  puts "I AM TRUE"
else
  puts "I AM false"
end

puts "----------------"

# || operator allows the code to be executed as soon as one value is true

puts "|| operator --------"

if a || c
  puts "I AM TRUE"
else
  puts "I AM false"
end

if a || b
  puts "I AM TRUE"
else
  puts "I AM false"
end

if c || d
  puts "I AM TRUE"
else
  puts "I AM false"
end

puts "----------------"

# > < operators compare if two values are greater or less then

puts "> < operator --------"

if e > b
  puts "I AM TRUE"
else
  puts "I AM false"
end

if e < b
  puts "I AM TRUE"
else
  puts "I AM false"
end

puts "----------------"

# >= <= operators do the same thing as operators above except they also compare if it's the same value (equal)

puts ">= <= operator --------"

if e >= b
  puts "I AM TRUE"
else
  puts "I AM false"
end

if e >= e
  puts "I AM TRUE"
else
  puts "I AM false"
end

if b <= e
  puts "I AM TRUE"
else
  puts "I AM false"
end

puts "----------------"

# == operators is true if both sides are equal


puts "== operator --------"

if e == b
  puts "I AM TRUE"
else
  puts "I AM false"
end

if e == e
  puts "I AM TRUE"
else
  puts "I AM false"
end

puts "----------------"

# ! operator reverse the value

puts !f
puts !d

#OR

# 1 = true
# 0 = false
#
# 1 || 1 = true
# 1 || 0 = true
# 0 || 1 = true
# 0 || 0 = false
