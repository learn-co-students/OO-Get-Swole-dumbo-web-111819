# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

#lifters

fzee = Lifter.new("fzee", 30)
rafi = Lifter.new("rafi", 10)

#gym

grand = Gym.new("grand")
planet = Gym.new("planet")
fit_club = Gym.new("fit_club")

#membership
# :cost, :lifter, :gym

cost_1 = Membership.new(20, fzee, grand )
cost_2 = Membership.new(25, fzee, planet)
cost_3 = Membership.new(10, rafi, fit_club)

# test code goes here

binding.pry

puts "Gains!"
