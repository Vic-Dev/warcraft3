class SiegeEngine < Unit

  attr_reader :health_points, :attack_power, :gold, :food, :lumber

  def initialize
    @health_points = 400
    @attack_power = 50
    @gold = 200
    @food = 3
    @lumber = 60
  end

  def attack!(enemy)
    if enemy.class == Barracks
      attack = self.attack_power * 2
      enemy.damage(attack)
    elsif enemy.class == SiegeEngine
      super(enemy)
    end
  end

end