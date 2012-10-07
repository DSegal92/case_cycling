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

    index do
      column :name
      column :standing
      column :majors
      column :minors
      column :collegeCategory
      column :usacCategory
      column "Biography" do |member|
        unless member.bio.nil?
          truncate(member.bio, :length => 10)       
        end
      end
      column :isRacer
      column :picture
      column :disciplines
      default_actions
    end
end
