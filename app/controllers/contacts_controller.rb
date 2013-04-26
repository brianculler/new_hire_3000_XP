class ContactsController < ApplicationController
  def new
      @contact = Contact.new
  end

  def update
      @contact = Contact.find(params[:id])
      
      if @contact.update_attributes(params[:contact])
        # Handle a successful update.
        flash[:success] = "Contact updated"
        redirect_to contacts_path
      else
        render 'edit'
      end
      
  end

  def edit
    @contact = Contact.find(params[:id])
  end
  
  def index
    @contacts = Contact.all
  end
end