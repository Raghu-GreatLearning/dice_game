require_relative "./genrate_random.rb"
require_relative "./pressR.rb"
require_relative "./makerankList.rb"
require_relative "./printRanks.rb"
require_relative "./getRanks.rb"


# score_board = {
#     player_1: 0,
#     player_2: 0,
#     player_3: 0,
#     player_4: 0,
# }

# rank_records = Hash.new(0)
# player_count = [1,2,3,4]

class PlayGame
    
    def initialize(score_board, player_count,rank_records)
        @score_board = score_board
        @player_count = player_count
        @rank_records = rank_records
        @score_x = 2
    end

    include GenrateRandomDice
    include PressR
    include PrintRanks
    include MakerankList
    include GetRanks


    def start
    
        turn = Random.rand(1..4)
        loop do
            # puts player_count.inspect
            
            loop do

                input(@player_count, turn)
    
                dice = giveDice
    
                print "\n\tPlayer-#{@player_count[turn-1]} get #{dice} Points\n"
    
                self.update_score("player_#{@player_count[turn-1]}", dice, turn)
                get_ranks(@score_board)
    
                break if dice !=6
            end
    
            if turn >= @player_count.length
                turn =1
            else
                turn +=1
            end
    
            break if @player_count.length == 0
        end
    
        print "\n\t Game Completed\n"
    
    end


    def update_score(player, score,turn)
        # puts "#{player.inspect}  == player"
        # puts "#{@score_board.inspect} == score_board"
        
        @score_board[:"#{player}"] +=score
        if @score_board[:"#{player}"] >= 10
            make_rank_list(player, @rank_records)
            print_ranks(@rank_records)
            @player_count.delete_at(turn-1)
        end

        # puts @player_count.inspect
        # puts turn
    end


end

# x= PlayGame.new(score_board, player_count,rank_records)
# x.start

# puts x.giveDice
# x.input(player_count, turn)
# x.update_score("player_2", 20, 2)

