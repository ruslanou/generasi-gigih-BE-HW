require_relative "person"

class Hero < Person
    def deflect?
        if rand(1..10) > 2
            puts "#{@name} deflects the attack"
            true
        end
    end
end