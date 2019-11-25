class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []
  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end


end # end of class




###### TO DO ######


###### DONE ######
# - Get a list of all memberships