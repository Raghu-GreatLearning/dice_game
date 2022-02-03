module MakerankList
    def make_rank_list(player, rank_records)
        rank_count = rank_records.length
        rank_count+=1
        rank_records[player] += rank_count
    end
end

# rank_records = Hash.new(0)

# MakerankList.make_rank_list("player_1", rank_records)
# puts rank_records