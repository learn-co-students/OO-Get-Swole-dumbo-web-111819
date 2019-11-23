class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|member_instance| member_instance.gym == self}
  end

  def members
    self.memberships.map{|member_instance| member_instance.lifter}
  end

  def member_names
    self.members.map{|member_instance| member_instance.name}
  end

  def lift_total
    total = 0
    self.members.each{|member_instance| total += member_instance.lift_total}
    total
  end
end







