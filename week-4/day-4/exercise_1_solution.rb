class FootballTally
  STATS = {
    "Devastating Donkeys": {wins: 0, loss: 0, draw: 0},
    "Allegoric Alaskans": {wins: 0, loss: 0, draw: 0},
    "Blithering Badgers": {wins: 0, loss: 0, draw: 0},
    "Courageous Californians": {wins: 0, loss: 0, draw: 0}
  }

  def self.print
    File.open("./teams.txt", "r") do |f|
      f.each_line do |line|
        game = line.split(";")
        case game[0]
        when "Devastating Donkeys"
          if game[2].chomp == "win"
            STATS[:"#{game[0]}"][:wins] += 3
          elsif game[2].chomp == "draw"
            STATS[:"#{game[0]}"][:draw] += 1
            STATS[:"#{game[1]}"][:draw] += 1
          end
        when "Allegoric Alaskans"
          if game[2].chomp == "win"
            STATS[:"#{game[0]}"][:wins] += 3
          elsif game[2].chomp == "draw"
            STATS[:"#{game[0]}"][:draw] += 1
            STATS[:"#{game[1]}"][:draw] += 1
          end
        when "Blithering Badgers"
          if game[2].chomp == "win"
            STATS[:"#{game[0]}"][:wins] += 3
          elsif game[2].chomp == "draw"
            STATS[:"#{game[0]}"][:draw] += 1
            STATS[:"#{game[1]}"][:draw] += 1
          end
        when "Courageous Californians"
          if game[2].chomp == "win"
            STATS[:"#{game[0]}"][:wins] += 3
          elsif game[2].chomp == "draw"
            STATS[:"#{game[0]}"][:draw] += 1
            STATS[:"#{game[1]}"][:draw] += 1
          end
        end
      end
    end
  end
end

FootballTally.print
