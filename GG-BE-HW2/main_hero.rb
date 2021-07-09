require_relative 'hero'

class MainHero < Hero
  def initialize(name, hitpoint, attack_damage)
    super(name, hitpoint, attack_damage)
    @heal_point = 20
  end

  def heal(other_person)
    other_person.getHeal(@heal_point)
    puts "#{@name} heals #{other_person.name}, restoring #{@heal_point} hitpoints"
  end
end