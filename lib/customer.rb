class Customer
   attr_reader :name, :age
   @@all = []
  def initialize(name,age)
   @name = name
   @age = age
   @@all << self
  end
  def self.all
     @@all
  end
  def new_meal(waiter, total, tip = 0)
   meal = Meal.new(waiter, self, total, tip)
  end
  def meals
   Meal.all.select {|m| m.customer == self}
  end
  def waiters
   meals.collect {|m| m.waiter}
  end
end