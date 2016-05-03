require_relative('spec_helper.rb')

# Aside from gold and food, there is also the concept of lumber. Add lumber as a resource that a Barracks can handle.

# A Barracks starts off with 500 lumber.

describe Barracks do 

  before :each do
    @barracks = Barracks.new
  end
  
  it "has and knows its lumber" do
    expect(@barracks.lumber).to eq(500)
  end

end