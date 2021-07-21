require_relative "person"

class Hero < Person
    def deflect?
        if rand(1..10) > 2
            puts "#{@name} deflects the attack"
            true
        end
    end

    def getHeal(heal_point)
      @hitpoint += heal_point
    end
end