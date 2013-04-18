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
  
  def edit
    @new_hire = NewHire.find(params[:id])
  end
  
  def update
      @new_hire = NewHire.find(params[:id])
      if params[:laptop]
        @new_hire.update_attributes(:laptop => params[:laptop])
      end
      if @new_hire.update_attributes(params[:new_hire])
        # Handle a successful update.
        flash[:success] = "Profile updated"
        redirect_to @new_hire
      else
        render 'edit'
      end
    end
    
    def index
      @new_hires = NewHire.paginate(page: params[:page])
    end
    
    def destroy
        NewHire.find(params[:id]).destroy
        flash[:success] = "New hire deleted."
        redirect_to new_hires_url
      end

end
