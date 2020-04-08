
#Meal class as a 'joining' model between our Waiter and our Customer classes.
#Will also hold the only source of truth. WIll know all the details of each Meal
#This includes the total cost and the tip(Defaults to zero) but also the customers
# and waiter were for each meal
class Meal
  attr_accessor :waiter, :customer, :total, :tip

  @@all = []

  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end

  def self.all
    @@all
  end


end
