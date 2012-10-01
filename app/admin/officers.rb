  ActiveAdmin.register Officer do

    form do |f|
      f.inputs do
        f.input :name
        f.input :year
        f.input :majors
        f.input :minors
        f.input :contact
        f.input :bio
        f.input :picture
        f.input :position, :collection => officer.getPositions
      end
      f.buttons
    end

  end