class Payment
    def initialize
        @total_payments = Hash.new(0)
    end

    def add_plan(term, quantity)
        @total_payments[term] += quantity
    end

    def add_payment
        return @total_payments
    end

end