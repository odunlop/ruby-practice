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
  
  profile_hash.each do | key, value |
    if value.chr.include?("S")
      puts value
    end
  end
end
