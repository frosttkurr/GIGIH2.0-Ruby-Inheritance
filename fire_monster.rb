require_relative 'monster'

class FireMonster < Monster
  def attack(monster)
    if @freeze_turn == 1
      print "#{@name} is in frozen state, can't attack"
    else
      take_damage(0.5 * monster.attack_point)
      
      monster.set_burnt(0.4 * @attack_point)
      
      print "#{@name} uses elemental attack on enemy's #{monster.name}, deals 0 damage, takes #{0.5 * monster.attack_point} damage, inflict burnt status for 3 turns with #{0.4 * @attack_point} damage each turn"
    end
  end
end