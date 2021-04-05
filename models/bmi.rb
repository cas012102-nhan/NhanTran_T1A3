class Bmi
    attr_reader :weight, :height
    def initialize(weight, height)
        @weight = weight
        @height = height
        @measurement = []
    end

    def add_bmi(weight, height)
        @measurement << [weight, height]
        end

    def measurement
        return weight / (height*height)
      
    end

end
