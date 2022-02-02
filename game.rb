score_board = {
    player_1: 0,
    player_2: 0,
    player_3: 0,
    player_4: 0,
}

rank_records = Hash.new(0)

# function to print scoreTable
def get_ranks(score_board)
    puts "\t.....Score Table....\n"
    score_board = score_board.sort_by { |player, key| key }.to_h

    score_board.reverse_each do |player, score|
        print "\t#{player}  score - #{score}\n"
    end
    puts "\n"
end

# function to create rankTable
def make_rank_list(player, rank_records)
    rank_count = rank_records.length
    rank_count+=1
    rank_records[player] += rank_count
end

# function to print rankTable
def print_ranks(rank_records)
    print "\n\t...Rank Table...."
    rank_records.each do |player, rank|
        print"\n\t#{player}   Rank - #{rank}"
    end
    print "\n\n"
end

#function to update scoreTable
def update_score(player, score, score_board, player_count, turn, rank_records)
    # puts "#{player.inspect}  == player"
    # puts "#{score_board.inspect} == score_board"

    score_board[:"#{player}"] +=score
    if score_board[:"#{player}"] >= 10
        make_rank_list(player, rank_records)
        print_ranks(rank_records)
        player_count.delete_at(turn-1)
    end
end


#function to play the Game
def play_game(score_board, player_count,rank_records)
    
    turn = Random.rand(1..(player_count.length))
    loop do
        # puts player_count.inspect
        
        loop do
            loop do
                print "\nPlayer-#{player_count[turn-1]} turn, Press R to roll the dice : "
                roll = gets.chomp
                roll.downcase!
                break if roll == "r"
            end

            dice = Random.rand(1..6)

            print "\n\tPlayer-#{player_count[turn-1]} get #{dice} Points\n"

            update_score("player_#{player_count[turn-1]}", dice, score_board, player_count,turn,rank_records)
            get_ranks(score_board)

            break if dice !=6
        end

        if turn >= player_count.length
            turn =1
        else
            turn +=1
        end

        break if player_count.length == 1
    end

    print "\n\t Game Completed\n"

end



print "Press S to start the game :: "

start_game = gets.chomp
start_game.downcase!

if start_game == 's'
    player_count = [1,2,3,4]
    play_game(score_board, player_count,rank_records)
else
    print "Game ended\n"
end