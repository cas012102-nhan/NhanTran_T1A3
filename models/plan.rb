class Plan
    attr_reader :term, :price
    def initialize(term, price)
        @term =  term
        @price = price
        
    end

    def term
        return @term
    end

    def price
        return @price
    end

    
end
