require "bike"

describe Bike do
  it { is_expected.to respond_to :is_broken }

  it "should report that it is broken" do
    bike = Bike.new
    expect(bike.is_broken).to eq @working == false
  end

  it "shouldn't give us a broken new bike" do
    bike = Bike.new
    expect(bike.working).to eq true
  end

end

