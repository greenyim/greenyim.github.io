class HomesController < ApplicationController
  def index
    @post = Text.all
  end
  
  def posting
  end
  
  def writing
    t = Text.new
    t.my_posting = params[:my_posting]
    t.save
    
    redirect_to '/homes/posting'
  end

  
end
