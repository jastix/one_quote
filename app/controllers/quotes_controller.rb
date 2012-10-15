class QuotesController < ApplicationController
  def index
    @quote = Quote.all.sample
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
