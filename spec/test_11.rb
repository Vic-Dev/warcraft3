require ('spec_helper.rb')

describe Footman do
  
  before :each do
    @footman = Footman.new
  end

  describe "#attack!" do
    it "should do deal 5 (AP) damage to the barracks unit" do
      enemy = Barracks.new
      expect(enemy).to receive(:damage).with(5)
      @footman.attack!(enemy)
    end
  end

end