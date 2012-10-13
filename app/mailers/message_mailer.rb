class MessageMailer < ActionMailer::Base

default from: "postmaster@casecycling.mailgun.org"	  

  def testMailer()
    mail(to: "DSegal92@gmail.com", :subject => "Test")
  end
end
