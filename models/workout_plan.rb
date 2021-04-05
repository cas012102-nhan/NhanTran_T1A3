require_relative './plan'

class WorkoutPlan
    # attr_reader :price, :term
    def initialize(term, price)
        @plans = []
        @price =  price
        @term = term
    end

    def add_plan(term, price)
        plan = Plan.new(term, price)
        @plans << plan
    end

    def add_price(term)
        plan = @plans.find {|plan| plan.term == term}
        return plan.price
    end

    def get_plan
        return @plans
    end

 
    
end
    
