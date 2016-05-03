# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  attr_reader :attack_power
  attr_accessor :health_points

  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    super(60, 10)
  end

  def attack!(enemy)
    if enemy.class == Barracks
      attack = ((self.attack_power)/2.0).ceil
      enemy.damage(attack)
    else
      super(enemy)
    end
  end

end
