class MessageMailer < ActionMailer::Base

default from: "postmaster@casecycling.mailgun.org"	  
 
  def newMessage(topic, name, email, message)
    @topic = topic
    @name = name
    @email = email
    @message = message
    mail(to: "DSegal92@gmail.com", :subject => "New Email about " @topic)
  end
end
