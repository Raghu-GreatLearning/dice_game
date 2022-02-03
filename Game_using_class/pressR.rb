# player_count = [1,2,3,4]
# turn =1

module PressR
    def input(player_count, turn)
        loop do
            print "\nPlayer-#{player_count[turn-1]} turn, Press R to roll the dice : "
            roll = gets.chomp.strip
            roll.downcase!
            break if roll == "r"
        end
    end
end

# PressR.input(player_count, turn)