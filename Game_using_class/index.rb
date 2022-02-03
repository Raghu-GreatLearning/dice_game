
module PlayAgain
    wish = true
    def PlayAgain.play_again
        print "\n\t PRESS P TO Play Again :: "
        play_again = gets.chomp.strip
        play_again.downcase!

        if play_again == "p"
            wish =false
        else
            wish = true
        end
    end
    wish
end




