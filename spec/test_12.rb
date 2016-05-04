require ('spec_helper.rb')

describe Unit do

  before :each do
    @unit = Unit.new(30, 5)
  end

  describe "#dead?" do
    it "returns true if health is 0 or lower" do
      @unit.damage(30)
      expect(@unit.dead?).to be true
    end

    it "returns false if health is greater than 0" do
      @unit.damage(10)
      expect(@unit.dead?).to be_falsey
    end
  end
  
end