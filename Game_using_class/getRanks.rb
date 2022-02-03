module GetRanks
    def get_ranks(score_board)
        puts "\t.....Score Table....\n"
        score_board = score_board.sort_by { |player, key| key }.to_h
    
        score_board.reverse_each do |player, score|
            print "\t#{player}  score - #{score}\n"
        end
        puts "\n"
    end
end