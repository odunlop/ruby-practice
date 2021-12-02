=begin The user starts by facing forward. 
They can move right, left, or forward. 
If they move right, they die (there's a goblin). 
If they move left, they die (there's a werewolf). 
If they move forward, they live. 
They have to do this twice to win. 
=end

def simple_game
  
  success_count = 0

  while success_count <= 2 do
  puts "Where will you go, adventurer? Right, left, or forward?"
  choice = gets.chomp.downcase
    if choice == "right"
      puts "You die (there's a goblin). Try again?"
      restart = gets.chomp.downcase
        if restart == "yes"
          success_count = 0
          puts "Reviving . . ."
        elsif restart == "no"
          print "Goodbye... For now."
          break
        end
    elsif choice == "left"
      puts "You die (there's a werewolf). Try again?"
      restart = gets.chomp.downcase
        if restart == "yes"
          success_count = 0
          puts "Reviving . . ."
        elsif restart == "no"
          print "Goodbye... For now."
          break
        end
    elsif choice == "forward"
      success_count = success_count.+(1)
      if success_count < 2
        puts "Success! Now choose again..."
      elsif success_count == 2
        puts "Congrats, you won! Want to try again?"
        choice = gets.chomp.downcase
        if choice == "yes"
          success_count = 0
          puts "Restarting..."
        else
          print "Enjoy your victory... For now."
          break
        end
      end
    end
  end
end
