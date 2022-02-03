module PrintRanks
    def print_ranks(rank_records)
        print "\n\t...Rank Table...."
        rank_records.each do |player, rank|
            print"\n\t#{player}   Rank - #{rank}"
        end
        print "\n\n"
    end
end

# rank_records = {
#     player_1: 1,
#     player_2: 2,
#     player_3: 3,
#     player_4: 4,
# }

# PrintRanks.print_ranks(rank_records)
