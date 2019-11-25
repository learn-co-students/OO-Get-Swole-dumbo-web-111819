class Gym
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def gym_membership
    # - Get a list of all memberships at a specific gym
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    # - Get a list of all the lifters that have a membership to a specific gym
    self.gym_membership.map do |gym|
      gym.lifter
    end
  end

  def all_names
    # - Get a list of the names of all lifters that have a membership to that gym
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def total_lift
    # - Get the combined lift total of every lifter has a membership to that gym
    lift_array = self.lifters.map do |lifter|
      lifter.lift_total
    end
    lift_array.sum
  end



end # end of class


###### TO DO ######

# - Get the combined lift total of every lifter has a membership to that gym

##### DONE #####
# - Get a list of all gyms
# - Get a list of all memberships at a specific gym
# - Get a list of all the lifters that have a membership to a specific gym
# - Get a list of the names of all lifters that have a membership to that gym

