require_relative 'villain'

class MongolSwordsman < Villain
  def attack(other_person)
    puts "#{@name} slashes #{other_person.name} with #{@attack_damage} damage"
    super(other_person)
  end
end