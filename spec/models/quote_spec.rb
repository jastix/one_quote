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

  describe "conent should be at least 2 symbols" do
    it "should not be valid if it has only 1 symbol" do
      @quote.content = 'a'
      @quote.should_not be_valid
    end

    it "should be valid with 2 symbols" do
      @quote.content = 'aa'
      @quote.should be_valid
    end
  end
end
