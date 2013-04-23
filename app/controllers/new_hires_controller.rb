class NewHiresController < ApplicationController
  
  def show
      @new_hire = NewHire.find(params[:id])
      @progress = 0
  end
  
  def new
      @new_hire = NewHire.new
  end
  
  def create
    @new_hire = NewHire.new(params[:new_hire])
    if @new_hire.save
      NewHireMailer.welcome_email(@new_hire).deliver
      NewHireMailer.keycard_email(@new_hire).deliver 
      NewHireMailer.laptop_email(@new_hire).deliver
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
      
    ######## todo list ########
    def update_laptop
      @new_hire = NewHire.find(params[:id])
      if params[:laptop]
        @new_hire.update_attributes(:laptop => params[:laptop])
      end
      redirect_to @new_hire
    end
    
    def update_badge
      @new_hire = NewHire.find(params[:id])
      if params[:badge]
        @new_hire.update_attributes(:badge => params[:badge])
      end
      redirect_to @new_hire
    end
    
    def update_vpn
      @new_hire = NewHire.find(params[:id])
      if params[:vpn]
        @new_hire.update_attributes(:vpn => params[:vpn])
      end
      redirect_to @new_hire
    end
    
    def update_seat
      @new_hire = NewHire.find(params[:id])
      if params[:seat]
        @new_hire.update_attributes(:seat => params[:seat])
      end
      redirect_to @new_hire
    end
    
    def update_docs
      @new_hire = NewHire.find(params[:id])
      if params[:docs]
        @new_hire.update_attributes(:docs => params[:docs])
      end
      redirect_to @new_hire
    end
    
    def update_irc
      @new_hire = NewHire.find(params[:id])
      if params[:irc]
        @new_hire.update_attributes(:irc => params[:irc])
      end
      redirect_to @new_hire
    end
    
    def update_vm
      @new_hire = NewHire.find(params[:id])
      if params[:vm]
        @new_hire.update_attributes(:vm => params[:vm])
      end
      redirect_to @new_hire
    end

end
