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

  def share
    if current_user
      quote = params[:form][:quote]
      User.delay.post_to_wall(current_user.id, quote)
    end
    redirect_to root_path, notice: 'Quote has been shared'
  end
end
