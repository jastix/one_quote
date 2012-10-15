require 'spec_helper'

describe Quote do
  before { @quote = FactoryGirl.create(:quote) }

  subject { @quote }

  it { should respond_to(:content) }
  it { should be_valid }

  describe "content should not be empty" do
    before { @quote.content = ''}
    it { should_not be_valid }
  end
end
