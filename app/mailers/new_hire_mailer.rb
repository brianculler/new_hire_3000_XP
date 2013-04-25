class NewHireMailer < ActionMailer::Base
  default :from => "New Hire 3000 XP"
 
  def welcome_email(new_hire)
    @new_hire = new_hire
    mail(:to => new_hire.email, :subject => "Welcome to Oracle!")
    #attachments['filename.jpg'] = File.read('/path/to/filename.jpg')
  end

  def laptop_email(new_hire)
  	@new_hire = new_hire
  	mail(:to => new_hire.email, :subject => "New Laptop for #{new_hire.name}!")
  end

  def badge_email(new_hire)
  	@new_hire = new_hire
  	mail(:to => new_hire.email, :subject => "New Keycard for #{new_hire.name}!")
  end
  
  def docs_email(new_hire)
    @new_hire = new_hire
    mail(:to => new_hire.email, :subject => "Documents for #{new_hire.name}!")
  end

  def IRC_email(new_hire)
    @new_hire = new_hire
    mail(:to => new_hire.email, :subject => "IRC for #{new_hire.name}!")
  end

  def seat_email(new_hire)
    @new_hire = new_hire
    mail(:to => new_hire.email, :subject => "New seat for #{new_hire.name}!")
  end

  def VM_email(new_hire)
    @new_hire = new_hire
    mail(:to => new_hire.email, :subject => "VM for #{new_hire.name}!")
  end

  def VPN_email(new_hire)
    @new_hire = new_hire
    mail(:to => new_hire.email, :subject => "VPN Access for #{new_hire.name}!")
  end
  
  def email_2(address)
    mail(:to => address, :subject => "laptop email 2")
  end
  
end