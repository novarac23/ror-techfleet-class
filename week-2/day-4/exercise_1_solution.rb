class Scribble
  VALUES = {
    "1" => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    "2" => ["D", "G"],
    "3" => ["B", "C", "M", "P"],
    "4" => ["F", "H", "V", "W", "Y"],
    "5" => ["K"],
    "8" => ["J", "X"],
    "10" => ["Q", "Z"]
  }

  def initialize(word)
    @word = word
  end

  def points
    chars = @word.upcase.split("") # ["C", "A"]
    points = 0
    chars.each do |character|
      VALUES.each do |key, value|
        if value.include?(character)
          points = points + key.to_i
        end
      end
    end
    points
  end
end

puts "Enter a word"
word = gets.chomp

scribble = Scribble.new(word)
puts scribble.points
