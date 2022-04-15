require_relative 'monster'

class IceMonster < Monster
  def attack(monster)
    if @freeze_turn == 1
      print "#{@name} is in frozen state, can't attack"
    else
      take_damage(0.5 * monster.attack_point)
      
      monster.set_freeze(0.8 * @attack_point)
      
      print "#{@name} uses elemental attack on enemy's #{monster.name}, deals #{0.8 * @attack_point} damage, takes #{0.5 * monster.attack_point} damage, inflict frozen status for 1 turns with 0 damage each turn"
    end
  end
end