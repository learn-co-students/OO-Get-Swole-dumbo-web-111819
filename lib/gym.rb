class Gym
  attr_reader :name
 @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def all_memberships
    binding.pry
    Membership.all.select{|ele|
      ele.gym == self
    }
  end

  def all_lifters

    lifty = Membership.all.select{|lifter|
      lifter.gym == self
      }
      lifty.map{|ele|
        ele.lifter
      }
  end

  def all_name
    self.all_lifters.map{|lifter|
      lifter.name
    }
  end

  def lift_total
    binding.pry
    lifter = self.all_lifters.map{|lifter|
      lifter.lift_total
    }
    lifter.sum
  end
  def self.all
    @@all
  end
end
