class Meal

    #### Attributes ####
    attr_accessor :waiter, :customer, :total, :tip
    @@all = []
    #### Instance Methods ####
    def initialize(waiter, customer, total, tip)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end

    #### Class Methods####
    def self.all
        @@all
    end
end
