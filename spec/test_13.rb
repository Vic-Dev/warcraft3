require_relative('spec_helper.rb')

# A dead Unit cannot attack another Unit. Conversely, an alive Unit will also not attack another Unit that is already dead.

describe Unit do 

  before :each do
    @unit_dead = Unit.new(0, 10)
    @unit_alive = Unit.new(30, 10)
    @unit_alive2 = Unit.new(30, 10)
  end

  describe "#attack!" do
    it "returns false if dead Unit tries to attack another Unit" do
      response = @unit_dead.attack!(@unit_alive)
      expect(response).to be_falsey
    end

    it "returns false if alive Unit tries to attack dead Unit" do
      response = @unit_alive.attack!(@unit_dead)
      expect(response).to be_falsey
    end

    it "returns true if alive Unit tries to attack alive Unit" do
      response = @unit_alive.attack!(@unit_alive2)
      expect(response).to be_truthy
    end
  end
  
end