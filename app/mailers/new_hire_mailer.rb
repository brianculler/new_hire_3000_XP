class NewHireMailer < ActionMailer::Base
  default :from => "cbissell12345@gmail.com"
 
  def welcome_email(new_hire)
    @new_hire = new_hire
    mail(:to => new_hire.email, :subject => "Welcome to Oracle!")
    #attachments['filename.jpg'] = File.read('/path/to/filename.jpg')
  end

  def laptop_email(new_hire)
  	@new_hire = new_hire
  	mail(:to => new_hire.email, :subject => "New Laptop for #{new_hire.name}!")
  end

  def keycard_email(new_hire)
  	@new_hire = new_hire
  	mail(:to => new_hire.email, :subject => "New Keycard for #{new_hire.name}!")
  end
end