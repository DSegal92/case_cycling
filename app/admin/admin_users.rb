ActiveAdmin.register AdminUser do
  form do |f|
  	f.inputs do
  		f.input :email
  		f.input :password
 	 end
 	 f.buttons
 	end

 	index do 
 		column :email
 		default_actions
 	end

 	show do |f|
 		
 	end
end
