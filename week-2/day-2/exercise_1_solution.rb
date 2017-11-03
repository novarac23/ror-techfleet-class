class Number
  def initialize(min, max)
    @min = min
    @max = max
  end

  def fizbuzz
    arr = []
    (@min..@max).each do |n|
      if ((n % 3 == 0) && (n % 5 == 0))
        arr << "FizzBuzz"
      elsif (n % 3 == 0)
        arr << "Fizz"
      elsif (n % 5 == 0)
        arr << "Buzz"
      else
        arr << n
      end
    end
    arr
  end
end

puts "Please enter first val: "
first_value = gets.chomp.to_i

puts "Please enter second val: "
second_value = gets.chomp.to_i

number = Number.new(first_value, second_value)
puts number.fizbuzz
