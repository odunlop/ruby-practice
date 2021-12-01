# Write a dice game - both I and my opponent roll two six-sided dice each
def game
    player_one = rand(7) + rand(7)
    player_two = rand(7) + rand(7)

        if player_one < player_two
            return false
        else
            return true
        end
end

# Upgrade the game: Now we play several rounds for each game. 
# The first player to win two rounds wins the game (Still with two dice each)
def game2
    player_one = rand(7) + rand(7)
    player_two = rand(7) + rand(7)
    loss = 0
    win = 0

    while true do 
        if win == 2 
            return true
        elsif loss == 2
            return false
        elsif player_one < player_two
           loss = loss + 1
        elsif  player_one > player_two
            win = win + 1
        end
    end 
end
