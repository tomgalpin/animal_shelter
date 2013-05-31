# Homework:  a pet adoption management system.
# Requirements: (build this application)
  # (1) Have Shelter
  # (2) Shelter has many pets
  # (3) Pets have various attributes, among these are a list of favorite toys (this will be an array).
      # come up with other attributes
  # (4) Also have clients.  Clients can have a pet from a Shelter
  # (5) Thus, must record whether a pet is available or not.  Another client can't take a pet that is already taken.
  # Application should:
    #(1) list available pets
    #(2) adopt pet
    #(3) give up pet
    #(4) hardcode shelter, pets, and their toys

=begin
Make Shelter already populated with pets.
All pets have toys.

=end
require "pry"

require_relative "shelter"
require_relative "pets"
require_relative "clients"

# Building Gameboard:

#   1. create shelters
#   2. create clients
#   3. create pets
#   4. populate shelters with pets

s1 = Shelter.new("Woodland Shelter", "124 Woodland Drive", 30)

#populate shelter:
s1.pets["Fluffy"] = Pet.new("Fluffy", "dog", "squeeky ball", true)
s1.pets["Spot"] = Pet.new("Spot", "dog", "shoe", true)
s1.pets["Stripes"] = Pet.new("Stripes", "dog", "rope", true)
s1.pets["Janet Reno"] = Pet.new("Janet Reno", "cat", "catnip", true)
s1.pets["Turd McNugget"] = Pet.new("Turd McNugget", "cat", "couch", true)
s1.pets["Harold"] = Pet.new("Harold", "dog", "backyard", true)

# Gameplay/App:

puts "What is your name?"
name_response = gets.chomp
puts "  "

puts "How many pets do you own?"
num_pets_response = gets.chomp
puts "  "

puts "What is your occupation?"
occupation_response = gets.chomp
puts "  "

puts "Do you want to adopt?  Anwer 'true' or 'false.'"
goal_response = gets.chomp
puts "  "

c1 = Client.new(name_response, num_pets_response, occupation_response, goal_response)

puts "  "
puts "Would you like to adopt a pet, donate a pet, or quit the program?"
puts "Respond with 'adopt,' 'donate,' or 'quit.'"

response = gets.chomp.downcase
puts "  "

while response != "quit"
  if response == "adopt"
    puts "Here is a list of all the pets at our shelter:  "
    puts "  "

    puts s1.pets.values

    puts "  "
    puts "Which one would you like to adopt?"
    puts "Please choose their name."

    adopt_response = gets.chomp

    c1.pets[adopt_response] = s1.pets[adopt_response]
    s1.pets.delete(adopt_response)

    puts "  "

  elsif response == "donate"

    puts "You are bum and a bad owner...."
    puts "But if you must, which one would you like to donate?"
    puts "Please enter their name:  "

    donate_response = gets.chomp

    puts "  "


    s1.pets[donate_response] = c1.pets[donate_response]
    c1.pets.delete(donate_response)

    puts "Thank you for donating your pet, you worm."
    puts "  "
  end

  puts "Would you like to donate another, adopt, or quit?"
  puts "Please respond with 'donate', 'adopt,' or 'quit.'"
  puts " "

  response = gets.chomp.downcase
end

binding.pry


