# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Blake", 10)
l2 = Lifter.new("Jane", 13)
l3 = Lifter.new("Tom", 1)

g1 = Gym.new("Planet Fitness")
g2 = Gym.new("Blink")
g3 = Gym.new("Tangerine Yoga")

m1 = Membership.new(10, l2, g3)
m2 = Membership.new(12, l1, g2)
m3 = Membership.new(45, l3, g3)
m4 = Membership.new(45, l2, g2)
m5 = Membership.new(45, l1, g1)
m6 = Membership.new(45, l2, g3)
m7 = Membership.new(45, l3, g1)

binding.pry

puts "Gains!"
