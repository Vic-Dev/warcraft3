class Barracks

  attr_reader :gold, :food, :lumber

  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
  end

  def can_train_footman?
    true unless (self.food < 2) || (self.gold < 135)
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
    else
      nil
    end
  end

  def can_train_peasant?
    true unless (self.food < 5) || (self.gold < 90)
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    else
      nil
    end
  end
end
