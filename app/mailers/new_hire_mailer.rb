class NewHireMailer < ActionMailer::Base
  default :from => "New Hire 3000 XP"
 
  def welcome_email(new_hire)
    @new_hire = new_hire
    mail(:to => new_hire.email, :subject => "Welcome to Oracle!")
    #attachments['filename.jpg'] = File.read('/path/to/filename.jpg')
  end

  def laptop_email(contact, new_hire)
  	@new_hire = new_hire
  	mail(:to => contact.email, :subject => "New Laptop for #{new_hire.name}")
  end

  def badge_email(contact, new_hire)
  	@new_hire = new_hire
  	mail(:to => contact.email, :subject => "Keycard Badge for #{new_hire.name}")
  end
  
  def docs_email(new_hire)
    @new_hire = new_hire
    mail(:to => new_hire.email, :subject => "Documents for #{new_hire.name}")
  end

  def IRC_email(contact, new_hire)
    @new_hire = new_hire
    mail(:to => contact.email, :subject => "IRC for #{new_hire.name}")
  end

  def seat_email(contact, new_hire)
    @new_hire = new_hire
    mail(:to => contact.email, :subject => "New seat for #{new_hire.name}")
  end

  def VM_email(contact, new_hire)
    @new_hire = new_hire
    mail(:to => contact.email, :subject => "VM for #{new_hire.name}")
  end

  def VPN_email(contact,new_hire)
    @new_hire = new_hire
    mail(:to => contact.email, :subject => "VPN Access for #{new_hire.name}")
  end
  
  def contact_email(contact)
    @contact = contact
    mail(:to => contact.email, :subject => "You are a New Hire 3000 XP contact!")
  end
end