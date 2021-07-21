
require_relative 'villain'
require_relative 'hero'
puts
puts "===================PLAYER CHECK==================="
jin = Hero.new("Jin Sakai", 100, 50)
puts jin

khotun = Villain.new("Khotun Khan", 500, 50)
puts khotun
puts "=================================================="
puts
puts "=================THE BATTLE BEGINS================="
loop do
    jin.attack(khotun)
    khotun.take_damage(jin.attack_damage)
    khotun.check_status
    if khotun.hitpoint <= 0
        khotun.is_dead?
        break
    end
   
        khotun.attack(jin)
        if jin.deflect? == true
          jin.check_status
          next
        else
          jin.take_damage(khotun.attack_damage)
          jin.check_status
        end
        if jin.hitpoint <= 0
            jin.is_dead?
            break
        end
  
    
end
puts "======================================================"



# class Character
#     def initialize(name, health_point, attack_point)
#         @name = name
#         @health_point = health_point
#         @attack_point = attack_point
#         puts "#@name has #@health_point health point and #@attack_point attack"
#     end

#     def attack(enemy)
       
#        # enemy.health_point -= attack
#         puts "#{@name}"
#         # puts "#@name attacks #@enemy_name with #@attack_point damage"
#         # puts "#@enemy_name has #@enemy_health hitpoint and #@enemy_attack attack damage" 

#         # if enemy_health <= 0
#         #     puts "#@enemy_name dies"    
#         # end
#     end
# end

# jin_sakai = Character.new("Jin Sakai", 100, 50)
# khotun_khan = Character.new("Khotun Khan", 500, 50)

# jin_sakai.attack(khotun_khan)