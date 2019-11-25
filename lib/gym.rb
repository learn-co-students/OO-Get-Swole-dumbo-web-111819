class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def total_lift_by_gym
    lift_array = self.lifters.map do |lifter|
      lifter.lift_total
    end
    lift_array.sum
  end

  def lifter_name
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end
  end

  def memberships 
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def self.all
    @@all 
  end
end

# **Gym** DONE
#   - Get a list of all gyms
#   - Get a list of all memberships at a specific gym
#   - Get a list of all the lifters that have a membership to a specific gym
#   - Get a list of the names of all lifters that have a membership to that gym
#   - Get the combined lift total of every lifter has a membership to that gym

