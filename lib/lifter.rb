class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end
  
  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership_instance| membership_instance.lifter == self}
  end

  def gyms
    self.memberships.map{|membership_instance| membership_instance.gym}
  end

  def self.average_lift
    total = 0
    self.all.each{|lifter_instance| total += lifter_instance.lift_total}
    total / self.all.count
  end

  def total_cost
    total = 0
    self.memberships.each{|membership_instance| total += membership_instance.cost }
    total
  end

  def sign_up(gym,cost)
    Membership.new(gym, self, cost)
  end

end
