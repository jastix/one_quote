class QuotesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :update, :destroy]
  
  def index
    @quote = Quote.all.sample
  end

  def new
    @quote = Quote.new
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def create
    @quote = Quote.new(params[:quote])
    if @quote.save
      flash[:notice] = 'Added new quote!'
      redirect_to root_path
    else
      render 'new'
    end
  end



  def share
    if current_user && current_user.facebook.get_object('me/permissions').first.include?('publish_stream')
      quote = params[:form][:quote]
      User.delay.post_to_wall(current_user.id, quote)
      redirect_to root_path, notice: 'Quote has been shared'
    else
      flash[:error] = "No permissions to publish to facebook"
    end
    
  end
end
