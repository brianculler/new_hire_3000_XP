class NewHiresController < ApplicationController
  
  def show
      @new_hire = NewHire.find(params[:id])
  end
  
  def new
      @new_hire = NewHire.new
  end
  
  def create
    @new_hire = NewHire.new(params[:new_hire])
    if @new_hire.save
      flash[:success] = "Thanks for adding a new hire!"
      redirect_to @new_hire
    else
      render 'new'
    end
  end
end
