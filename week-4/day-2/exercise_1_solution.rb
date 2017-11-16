class IceCreamReader
  def self.print
    File.open("./ice_creams.txt", "r") do |f|
      f.each_line do |line|
        line.split.each do |word|
          puts "#{word}"
        end
      end
    end
  end
end

IceCreamReader.print
