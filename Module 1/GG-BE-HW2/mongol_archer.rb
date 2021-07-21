require_relative 'villain'

class MongolArcher < Villain
  def attack(other_person)
    puts "#{@name} shoots an arrow at #{other_person.name} with #{@attack_damage} damage"
    super(other_person)
  end
end