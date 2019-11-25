class Lifter
  attr_reader :name, :lift_total

  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  
  def self.all
    @@all
  end

  def membership
# - Get a list of all the memberships that a specific lifter has
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gym
    # - Get a list of all the gyms that a specific lifter has memberships to
    self.membership.map do |membership|
      membership.gym
    end
  end

  def self.total_lift
    # Get the average lift total of all lifters
   all_lifters = self.all.map do |lifter|
    lifter.lift_total
   end
   all_lifters.sum / Lifter.all.count
  end

  def total_cost
    cost = self.membership.map do |membership|
      membership.cost
    end
    cost.sum
  end

  def new_membership(cost, gym)
    # - Given a gym and a membership cost, sign a specific lifter up for a new gym
    Membership.new(cost, self, gym)
  end




end #end of class


####### TO DO #######


###### DONE ######

# - Get the average lift total of all lifters
# - Get a list of all lifters
# - Get a list of all the memberships that a specific lifter has
# - Get a list of all the gyms that a specific lifter has memberships to
# - Get the total cost of a specific lifter's gym memberships
# - Given a gym and a membership cost, sign a specific lifter up for a new gym

