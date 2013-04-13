class MessageMailer < ActionMailer::Base

default from: "postmaster@casecycling.mailgun.org"	  
 
  def newMessage(topic, name, email, message)
    @name = name
    @email = email
    @message = message
    mail(to: "Contactcasecycling@gmail.com", :subject => "New Email about " + topic)
  end
end
