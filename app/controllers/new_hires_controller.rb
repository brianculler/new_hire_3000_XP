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
      flash[:success] = "Thanks for adding a new hire! A welcome email has been sent to new hire."
      redirect_to @new_hire
      NewHireMailer.welcome_email(@new_hire).deliver
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
      if @new_hire.laptop == 3 || @new_hire.laptop == 4
        NewHireMailer.laptop_email(@new_hire).deliver
        flash[:success] = "Laptop email sent!"
      #elsif @new_hire.laptop == 2 || @new_hire.laptop == 5
        #NewHireMailer.email_2(@new_hire).deliver
        #flash[:success] = "Email 2 sent!"
      elsif @new_hire.laptop == 1
        flash[:success] = "Work done!"
      end
      redirect_to @new_hire
    end
    
    def update_badge
      @new_hire = NewHire.find(params[:id])
      if params[:badge]
        @new_hire.update_attributes(:badge => params[:badge])
      end
      if @new_hire.badge == 3 || @new_hire.badge == 4
        NewHireMailer.badge_email(@new_hire).deliver
        flash[:success] = "Badge email sent!"
      #elsif @new_hire.badge == 2 || @new_hire.badge == 5
        #NewHireMailer.email_2(@new_hire).deliver
        #flash[:success] = "Email 2 sent!"
      elsif @new_hire.badge == 1
        flash[:success] = "Work done!"
      end
      redirect_to @new_hire
    end
    
    def update_vpn
      @new_hire = NewHire.find(params[:id])
      if params[:vpn]
        @new_hire.update_attributes(:vpn => params[:vpn])
      end
      if @new_hire.vpn == 3 || @new_hire.vpn == 4
        NewHireMailer.VPN_email(@new_hire).deliver
        flash[:success] = "VPN email sent!"
      #elsif @new_hire.vpn == 2 || @new_hire.vpn == 5
        #NewHireMailer.email_2(@new_hire).deliver
        #flash[:success] = "Email 2 sent!"
      elsif @new_hire.vpn == 1
        flash[:success] = "Work done!"
      end
      redirect_to @new_hire
    end
    
    def update_seat
      @new_hire = NewHire.find(params[:id])
      if params[:seat]
        @new_hire.update_attributes(:seat => params[:seat])
      end
      if @new_hire.seat == 3 || @new_hire.seat == 4
        NewHireMailer.seat_email(@new_hire).deliver
        flash[:success] = "Seat placement email sent!"
      #elsif @new_hire.seat == 2 || @new_hire.seat == 5
        #NewHireMailer.email_2(@new_hire).deliver
        #flash[:success] = "Email 2 sent!"
      elsif @new_hire.seat == 1
        flash[:success] = "Work done!"
      end
      redirect_to @new_hire
    end
    
    def update_docs
      @new_hire = NewHire.find(params[:id])
      if params[:docs]
        @new_hire.update_attributes(:docs => params[:docs])
      end
      if @new_hire.docs == 3 || @new_hire.docs == 4
        NewHireMailer.docs_email(@new_hire).deliver
        flash[:success] = "Document email sent!"
      #elsif @new_hire.docs == 2 || @new_hire.docs == 5
        #NewHireMailer.email_2(@new_hire).deliver
        #flash[:success] = "Email 2 sent!"
      elsif @new_hire.docs == 1
        flash[:success] = "Work done!"
      end
      redirect_to @new_hire
    end
    
    def update_irc
      @new_hire = NewHire.find(params[:id])
      if params[:irc]
        @new_hire.update_attributes(:irc => params[:irc])
      end
      if @new_hire.irc == 3 || @new_hire.irc == 4
        NewHireMailer.IRC_email(@new_hire).deliver
        flash[:success] = "IRC email sent!"
      #elsif @new_hire.irc == 2 || @new_hire.irc == 5
        #NewHireMailer.email_2(@new_hire).deliver
        #flash[:success] = "Email 2 sent!"
      elsif @new_hire.irc == 1
        flash[:success] = "Work done!"
      end
      redirect_to @new_hire
    end
    
    def update_vm
      @new_hire = NewHire.find(params[:id])
      if params[:vm]
        @new_hire.update_attributes(:vm => params[:vm])
      end
      if @new_hire.vm == 3 || @new_hire.vm == 4
        NewHireMailer.VM_email(@new_hire).deliver
        flash[:success] = "VM email sent!"
      #elsif @new_hire.vm == 2 || @new_hire.vm == 5
        #NewHireMailer.email_2(@new_hire).deliver
        #flash[:success] = "Email 2 sent!"
      elsif @new_hire.laptop == 1
        flash[:success] = "Work done!"
      end
      redirect_to @new_hire
    end

end
