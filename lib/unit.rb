class Unit

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    enemy.damage(@attack_power) unless enemy.dead? || self.dead?
  end

  def damage(attack_power_specified)
    @health_points -= attack_power_specified
  end

  def dead?
    true unless @health_points > 0
  end

end