class HomeController < ApplicationController
  def index
    @quote = Quote.all.sample
  end
end
