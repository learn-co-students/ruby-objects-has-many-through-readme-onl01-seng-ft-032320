class Customer

    #### Attributes ####
    attr_accessor :name, :age
    @@all = []

    #### Instance Methods ####
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def new_meal(waiter,total,tip)
        Meal.new(waiter,self,total,tip)
    end

    def meals
        Meal.all.select {|meal_list| meal_list.customer == self}
    end

    def waiters
        meals.collect {|meal_obj| meal_obj.waiter}
    end

    #### Class Methods ####
    def self.all
        @@all
    end
end
