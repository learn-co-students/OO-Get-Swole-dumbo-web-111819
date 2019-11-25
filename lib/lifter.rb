class Lifter
  attr_reader :name, :lift_total, :membership

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def gym_sign_up(gym, membership_cost)
    Membership.new(membership_cost, self, gym)
  end

  def total_gym_cost
    lifter_cost = self.memberships.map do |membership|
      membership.cost 
    end
    lifter_cost.sum
  end

  def self.average_lifts
    total_lifts = self.all.map do |lifter|
      lifter.lift_total
    end
    total_lifts.sum/self.all.count
  end
  #binding.pry

  def memberships 
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym
    end
  end

  def self.all
    @@all
  end
end

# **Lifter** DONE

#   - Get a list of all lifters
#   - Get a list of all the memberships that a specific lifter has
#   - Get a list of all the gyms that a specific lifter has memberships to
#   - Get the average lift total of all lifters
#   - Get the total cost of a specific lifter's gym memberships
#   - Given a gym and a membership cost, sign a specific lifter up for a new gym




