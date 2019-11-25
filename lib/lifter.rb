class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def membership
    Membership.all.select{|member|
      member.lifter == self
    }
  end

  def gym
    gym = Membership.all.select{|member|
      member.lifter == self
    }
      gym.map{|ele|
       ele.gym
      }
  end

  def self.total_lift
    total_lifts = Lifter.all.map{|lift|
        lift.lift_total
      }
      average = (total_lifts.sum)/ total_lifts.length
  end

  def total_cost
    # binding.pry
    member = Membership.all.select{|member|
      member.lifter == self
      }
      cost_price = member.map{|ele|
        ele.cost
      }.sum
  end

  def new_gym(cost, lifter, gym)

    Membership.new(cost, self, gym)
  end

  def self.all
    @@all
  end
end
