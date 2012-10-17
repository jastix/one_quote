class QuotesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :update, :destroy]
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
