require 'spec_helper'

describe "Quote page" do
  before { @quote = FactoryGirl.create(:quote) }
  describe "Main page" do
    it "should show a quote" do
      visit root_path
      page.should have_selector("div.quote", text: @quote.content)
    end
  end
end