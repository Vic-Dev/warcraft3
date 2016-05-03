class Unit

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    enemy.damage(self.attack_power)
  end

  def damage(attack_power_specified)
    @health_points -= attack_power_specified
  end

end