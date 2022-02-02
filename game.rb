score_board = {
    player_1: 0,
    player_2: 0,
    player_3: 0,
    player_4: 0,
}



def get_ranks(score_board)
    puts "\n\tRank Table"
    score_board = score_board.sort_by { |player, key| key }.to_h

    score_board.reverse_each do |player, score|
        print "\t#{player}  score - #{score}\n"
    end
end



def update_score(player, score, score_board, player_count, turn)
    # puts "#{player.inspect}  == player"
    # puts "#{score_board.inspect} == score_board"
    score_board[:"#{player}"] +=score
    if score_board[:"#{player}"] >= 10 
        player_count.delete_at(turn-1)
    end
end



def play_game(score_board, player_count)
    final_score = 30
    
    turn = Random.rand(1..(player_count.length))
    loop do
        # puts player_count.inspect
        print "\nPlayer-#{player_count[turn-1]} turn, Press R to roll the dice : "
        roll = gets.chomp
        roll.downcase!
        
        dice = Random.rand(1..6)

        print "Player-#{player_count[turn-1]} get #{dice} Points\n"

        update_score("player_#{player_count[turn-1]}", dice, score_board, player_count,turn)
        get_ranks(score_board)


        if turn >= player_count.length
            turn =1
        else
            turn +=1
        end

        break if player_count.length == 1
    end

end



print "Press S to start the game :: "

start_game = gets.chomp
start_game.downcase!

if start_game == 's'
    player_count = [1,2,3,4]
    play_game(score_board, player_count)
else
    print "Game ended"
end