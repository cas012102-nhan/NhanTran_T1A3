
require_relative '../models/info'
require_relative '../models/plan'
require_relative '../models/bmi'
require_relative '../models/workout_plan'
require_relative '../models/payment'

describe Plan do
    it 'should return workout plans' do
        term = "one month"
        price = 20
        plan = Plan.new(term, price)
        expect(plan.term).to eq(term)
        expect(plan.price).to eq(price)
    end
end

describe WorkoutPlan do
    it 'should be able to add new pricing' do
        term = "one month"
        price = 20
        workout_plan = WorkoutPlan.new(term, price)
        workout_plan.add_plan(term, price)
        expect(workout_plan.add_price(term)).to eq(price)
    end

    it 'should be able to add new plans' do
        term = "one month"
        price = 20
        workout_plan = WorkoutPlan.new(term, price)
        workout_plan.add_plan(term, price)
        expect(workout_plan.get_plan().length).to eq(1)
    end
end


describe Payment do
    it 'should be able to add payment' do
        term = "one month"
        quantity = 1
        payment = Payment.new
        payment.add_plan(term, quantity)
        expect(payment.add_payment().length).to be(1)
    end

    it 'should be able to add another plans' do
        term = "one month"
        quantity = 1
        quantity_added = 2
        payment = Payment.new
        payment.add_plan(term, quantity)
        payment.add_plan(term, quantity_added)
        expect(payment.add_payment()[term]). to be(quantity + quantity_added)
    end
end

