class NumericTranslator
  def initialize(roman_numeral)
    @numeral = roman_numeral
  end

  def translate
    @numeral = @numeral.split("").collect do |letter|
      case letter
      when "I" then 1
      when "V" then 5
      when "X" then 10
      when "L" then 50
      when "C" then 100
      when "D" then 500
      when "M" then 1000
      else
        puts "Please enter a roman numeral"
      end
    end
    @numeral.reduce(:+)
  end
end

puts "Enter a roman numeral: "
roman = gets.chomp.upcase
result = NumericTranslator.new(roman).translate
puts "#{roman} -> #{result}"
