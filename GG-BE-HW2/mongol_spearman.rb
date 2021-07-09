require_relative 'villain'

class MongolSpearman < Villain
  def attack(other_person)
    puts "#{@name} thrusts #{other_person.name} with #{@attack_damage} damage"
    super(other_person)
  end
end