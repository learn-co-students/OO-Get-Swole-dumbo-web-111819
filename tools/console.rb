# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'
require 'pry'
# test code goes here

g1 = Gym.new('La Fitness')
g2 = Gym.new('Planet fitness')
g3 = Gym.new('24hour fitness')

l1 = Lifter.new('rob', 243)
l2 = Lifter.new('barry', 57)
l3 = Lifter.new('jalle', 887)
l4 = Lifter.new('shelly', 2929)
l5 = Lifter.new('rosa', 4)
l6 = Lifter.new('mike', 782)
l7 = Lifter.new('justin', 485)

m1 = Membership.new(g1,l1,10)
m2 = Membership.new(g1,l2,40)
m3 = Membership.new(g2,l3,35)
m4 = Membership.new(g2,l2,35)
m5 = Membership.new(g2,l1,50)
m6 = Membership.new(g3,l1,40)
m7 = Membership.new(g3,l3,20)


binding.pry

puts "Gains!"
