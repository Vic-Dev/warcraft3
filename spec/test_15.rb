require_relative('spec_helper.rb')

# Introduce a SiegeEngine Unit. The SiegeEngine is very effective against buildings such as the Barracks. However, it is ineffective against other Units. (It can't attack them, as if they were dead.)

# So unlike with Footman (whose attacks do a fraction of the damage they normally would,) a SiegeEngine does 2× damage against a Barracks.

# Also, SiegeEngines can attack other SiegeEngines even though they cannot attack any other Units (such as Peasants or Footmans.)

# SiegeEngines are initialized with these stats.

# AP: 50
# HP: 400
# Cost: 200 gold, 60 lumber, 3 food
# Make note, you will need to require the seige_engine.rb file in spec_helper.rb.

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  it "has and knows its HP (health points)" do
    expect(@siege_engine.health_points).to eq(400)
  end

  it "has and knows its AP (attack power" do
    expect(@siege_engine.attack_power).to eq(50)
  end

  it "starts off with 200 gold resources" do
    expect(@siege_engine.gold).to eq(200)
  end

  it "starts off with 3 food" do
    expect(@siege_engine.food).to eq(3)
  end

  it "starts off with 60 lumber" do
    expect(@siege_engine.lumber).to eq(60)
  end

  describe "#attack!" do
    it "should do deal 100 (AP) damage to the Barracks unit" do
      enemy = Barracks.new
      expect(enemy).to receive(:damage).with(100)
      @siege_engine.attack!(enemy)
    end

    it "should do deal 50 (AP) damage to the SiegeEngine unit" do
      enemy = SiegeEngine.new
      expect(enemy).to receive(:damage).with(50)
      @siege_engine.attack!(enemy)
    end

    it "returns false if SiegeEngine tries to attack Footman" do
      enemy = Footman.new
      expect(@siege_engine.attack!(enemy)).to be_falsey
    end

    it "returns false if SiegeEngine tries to attack Peasant" do
      enemy = Peasant.new
      expect(@siege_engine.attack!(enemy)).to be_falsey
    end
  end

end



