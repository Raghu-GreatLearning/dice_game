require "./play_game.rb"


score_board = {
    player_1: 0,
    player_2: 0,
    player_3: 0,
    player_4: 0,
}

rank_records = Hash.new(0)
player_count = [1,2,3,4]

print "Press S to start the game :: "

start_game = gets.chomp
start_game.downcase!

if start_game == 's'
    gameMode = PlayGame.new(score_board, player_count,rank_records)
    gameMode.start
else
    print "Game ended\n"
end