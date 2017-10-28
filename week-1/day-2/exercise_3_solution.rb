class Fizz
  def self.buzz(min, max)
    arr = []
    (min..max).each do |n|
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

puts "Enter the first value: "
value1 = gets.chomp.to_i

puts "Enter the second value: "
value2 = gets.chomp.to_i

puts Fizz.buzz(value1, value2)
