# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

# initialize(name, lift_total)
valentine = Lifter.new("Valentine", 3)
alex = Lifter.new("Alex", 2)
alice = Lifter.new("Alice", 1)

# initialize(name)
ymca = Gym.new("YMCA")
planet_fitness = Gym.new("Planet fitness")
blink = Gym.new("Blink")

# initialize(cost, lifter, gym)
membership1 = Membership.new(20, alex, blink)
membership2 = Membership.new(70, valentine, ymca)
membership3 = Membership.new(10, alice, planet_fitness)
membership4 = Membership.new(10, alice, blink)
membership5 = Membership.new(20, valentine, planet_fitness)



binding.pry

puts "Gains!"
