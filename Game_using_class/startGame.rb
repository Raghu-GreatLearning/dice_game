require_relative "./play_game.rb"
require_relative "./index.rb"

score_board = {
    player_1: 0,
    player_2: 0,
    player_3: 0,
    player_4: 0,
}

rank_records = Hash.new(0)
player_count = [1,2,3,4]

print "Press S to start the game :: "

start_game = gets.chomp.strip
start_game.downcase!

if start_game == 's'
    loop do
        score_board_copy = score_board.dup
        player_count_copy = player_count.dup
        rank_records_copy = rank_records.dup
        gameMode = PlayGame.new(score_board_copy, player_count_copy,rank_records_copy)
        gameMode.start
    
    
    
        what_wish = PlayAgain.play_again
        # re_gameMode = PlayGame.new(score_board, player_count,rank_records)
        # gameMode.start unless what_wish
        # puts score_board_copy
        # puts score_board
        break if what_wish == true
    end

    print "\n\t BYE..\n"

else
    print "Game ended\n"
end