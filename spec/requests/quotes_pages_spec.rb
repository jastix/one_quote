require 'spec_helper'

describe "Quote page" do

  before { @quote = FactoryGirl.create(:quote) }
  let!(:user) { FactoryGirl.create(:user) }

  describe "Main page" do
    it "should show a quote" do
      visit root_path
      page.should have_selector("div.quote", text: @quote.content)
    end
  end

  describe "Show page" do
    it "should show a particular quote" do
      visit quotes_path(@quote)
      page.should have_selector("div.quote", text: @quote.content)
    end
  end

  describe "Add a new quote" do
    before { visit root_path }
    describe "as non logged in user" do
      it "should not be possible to click a link to add a new quote" do

        page.should_not have_link('Add a quote', href: new_quote_path )
      end
    end
    
  end
end