class MessageMailer < ActionMailer::Base

default from: "postmaster@vigilantnotifier.mailgun.org"
  		  

  def new_account(primary_hospital, doctors)
  	@primary_hospital = primary_hospital
  	@doctors = doctors
  	mail(to: AdminUser.find_all_by_notified(true).map(&:email), :subject => "New Accounts Added to " + primary_hospital.name)
  end

   def new_nethosps(primary_hospital, institutions)
   	@primary_hospital = primary_hospital
   	@institutions = institutions
    mail(to: AdminUser.find_all_by_notified(true).map(&:email), :subject => "New Contacts/ Network Hospitals Added to " + primary_hospital.name)
  end

  def testMailer()
    mail(to: "DSegal92@gmail.com", :subject => "Test")
  end
end
