class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:success] = "Thanks for adding a new contact! A notification has been sent to the contact."
      redirect_to contacts_path
      NewHireMailer.contact_email(@contact).deliver
    else
      render 'new'
    end
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

  def destroy
    Contact.find(params[:id]).destroy
    flash[:success] = "Contact deleted."
    redirect_to root
  end
end