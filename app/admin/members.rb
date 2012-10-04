ActiveAdmin.register Member do
  form do |f|
      f.inputs do
        f.input :name
        f.input :standing
        f.input :majors
        f.input :minors
        f.input :collegeCategory
        f.input :usacCategory
        f.input :bio
        f.input :isRacer
        f.input :picture
        f.input :disciplines, :as => :check_boxes
       

      end
      f.buttons
    end
end
