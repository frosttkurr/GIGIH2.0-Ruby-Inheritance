class Player
  attr_reader :monsters

  def initialize(player_name, monsters)
    @player_name = player_name
    @monsters = monsters
  end

  def to_s
    puts "#{@player_name}:"
    @monsters.join(", ")
  end

  def add_monster(monster)
    @monsters.append(monster.dup)
  end

  def attack(target, monster, opponent)    
    if @monsters.include? monster and target.monsters.include? opponent
      @monster = monster
      puts ""
      print "#{@player_name}'s "
      monster.attack(opponent)
    end

    puts ""
    puts ""
    
    if @player_name == "Player 1"
      puts self
      puts ""
      puts target
    else 
      puts target
      puts ""
      puts self
    end
  end

  def special_skills
    @monsters.each do |monster|
      monster.apply_skills
    end
  end

  def stats
    self
  end
end