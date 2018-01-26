require "bike"

describe Bike do
  it { is_expected.to respond_to :working? }

  it "should report that it is broken" do
    broken_bike = Bike.new
    broken_bike.is_broken
    expect(broken_bike.working?).to eq false
  end

end

