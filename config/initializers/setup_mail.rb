ActionMailer::Base.smtp_settings = {
	:address				=> "smtp.mailgun.org",
	:port					=> "587",
	:domain					=> "casecycling.herokuapp.com",
	:user_name				=> "postmaster@casecycling.mailgun.org",
	:password				=> "0kd4kh22uia8",
	:authentication 		=> "plain"
}


ActionMailer::Base.delivery_method = :smtp