require 'bike'

describe Bike do

  it { is_expected.to be_working }

  it "reports the bike is broken" do
    subject.report_broken
    expect(subject).to be_broken
  end

end
