class Waiter

    #### Attributes ####
    attr_accessor :name, :years_of_experience
    @@all = []
    #### Instance Methods ####
    def initialize(name, years_of_experience)
        @name = name
        @years_of_experience = years_of_experience
        @@all << self
    end

    def new_meal(customer,total,tip)
        Meal.new(self,customer,total,tip)
    end

    def meals
        Meal.all.select {|meal_list| meal_list.waiter == self}
    end

    def best_tipper
        best_tip = meals.max {|a, b| a.tip <=> b.tip }
        best_tip.customer
    end

    #### Class Methods####
    def self.all
        @@all
    end
end
