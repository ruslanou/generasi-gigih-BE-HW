require_relative "person"

class Villain < Person
  def flee?
    if (@hitpoint <= 50)
      if rand(1..10) > 5
        puts "#{@name} has fled the battlefield with #{@hitpoint} hitpoint left"
        puts
        true
      end
    end
  end

  def attack(other_person)  
    if other_person.deflect?
    elsif
        other_person.take_damage(@attack_damage)
    
    end
  end
end