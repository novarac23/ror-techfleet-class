class IceCreamReader
  def self.print
    File.open("./ice_creams.txt", "r") do |f|
      f.each_line do |line|
        puts "#{line}"
      end
    end
  end
end

IceCreamReader.print
