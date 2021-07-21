require_relative 'mongol_spearman'
require_relative 'mongol_archer'
require_relative 'hero'
require_relative 'main_hero'
require_relative 'mongol_swordsman'

jin = MainHero.new("Jin Sakai", 100, 50)
yuna = Hero.new("Yuna", 90, 45)
ishikawa = Hero.new("Sensei Ishikawa", 80, 60)
heroes = [jin, yuna, ishikawa]
mongol_archer = MongolArcher.new("Mongol Archer", 80, 40)
mongol_spearman = MongolSpearman.new("Mongol Spearman", 120, 60)
mongol_swordsman = MongolSwordsman.new("Mongol Swordsman", 100, 50)
villains = [mongol_archer, mongol_spearman, mongol_swordsman]

turnCount = 1
until (heroes.empty? || villains.empty?) do 
  puts "==================== Turn #{turnCount} ===================="
  puts
  # Check status every character
  heroes.each do |hero|
    puts hero.check_status
  end
  puts
  villains.each do |villain|
    puts villain.check_status
  end
  puts
  #==============================

  # Jin turn to attack villain or heal ally
  puts "1) Attack an enemy"
  puts "2) Heal an ally"
  print "As #{jin.name} what do you want to do this turn? "
  jinChoice = gets.chomp.to_i
  jinTurn = false #to check if jin is already attack or not. So jin can't have twice to attack
  puts
  if jinChoice == 1
    puts "[if you pick 1]"
    villains.each_with_index do |villain, index|
      puts "#{index+1}) #{villain.name}"
    end
    print "Which enemy you want to attack? "
    enemyIndex = gets.chomp.to_i
    selectedVillain = villains[enemyIndex-1]  
    jin.attack(selectedVillain)
    jinTurn= true
    villains.delete(selectedVillain) if 
    selectedVillain.is_dead? || selectedVillain.flee?
  elsif jinChoice == 2
    puts "[if you pick 2]"
    heroes.each_with_index do |hero, index|
      if index == 0
        next
      end
      puts "#{index}) #{hero.name}"
    end
    print "Which ally you want to heal?"
    allyIndex = gets.chomp.to_i
    selectedAlly = heroes[allyIndex]
    jin.heal(selectedAlly)
    jinTurn= true
  else
    puts "You skip your turn"
  end
  #==============================
  
  # Jin ally's turn to attack villain
  heroes.each do |hero|
    if jinTurn == true
      jinTurn = false
      villains.each do |villain|
        villains.delete(villain) if 
        villain.is_dead? || villain.flee?
      end
      next
    else
      hero.attack(villains[rand(villains.size)])
      villains.each do |villain|
        villains.delete(villain) if 
        villain.is_dead? || villain.flee?
      end
    end
   
    puts
  end
  # =============================

  # Check if Villain's still available
    if villains.length == 0
      puts "Heroes wins"
      break
    end
  # =============================

  # Villain's turn to attack heroes
  villains.each do |villain|
    villain.attack(heroes[rand(heroes.size)])
  end
  puts
  # ====================

  # Check if Heroes's still available
  if heroes.length == 0
    puts "Villains wins"
    break
  end
  # ==============================
  turnCount += 1
end





