def task_one
  favourite_animal = {}
  puts "What is your favourite animal?"
  response = gets.chomp
  favourite_animal["animal".to_s] = "#{response}" 
  print favourite_animal

end

def task_two
  profile_hash = {
    :name => "Orla", 
    :home => "Northumberland", 
    :pet => "Henry", 
    :age => 23, 
    :food => "Salmon" }

  p profile_hash
  puts "What do you want to view? Name, Home, Pet, Age or Food?"
  response = gets.chomp.downcase
  p profile_hash[:"#{response}"]
  puts "Time for only 'S' words!"
  profile_hash.each do | key, value |
    if value.chr.include?("S")
      puts value
    end
  end
end

def task_three
  dictionary = {
    :"bear" => "a creature that fishes in the river for salmon.",
    :"river" => "a body of water that contains salmon, and sometimes bears.",
    :"salmon" => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both."
  }
  
  puts "What do you want to look up? Bear, river, or salmon?"
  response = gets.chomp.downcase
  return dictionary[:"#{response}"]
end

def task_four
  players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]
  
  players_by_sport = {}

  players.each do |player|
    sport = player[:sport]
    name  = player[:name]
  
    if players_by_sport[sport] == nil
      players_by_sport[sport] = []
    end

    players_by_sport[sport].push(name)
    
  end
  
  players_by_sport
end