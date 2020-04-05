class Waiter
   attr_reader :name, :years
   @@all = []
  def initialize(name,years)
   @name = name
   @years = years
   @@all << self
  end
  def self.all
     @@all
  end
  def new_meal(customer,total,tip = 0)
   meal = Meal.new(self, customer, total, tip)
  end
  def meals
   Meal.all.select {|m| m.waiter == self}
  end
  def best_tipper
   puts meals.max
   meals.max_by {|m| m.tip}.customer
  end
end