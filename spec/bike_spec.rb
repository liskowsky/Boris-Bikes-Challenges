require "bike"

describe Bike do

  it "shows if the bike is working" do
    expect(subject).to respond_to :working?
  end

  it {is_expected.to respond_to :working?}

end
