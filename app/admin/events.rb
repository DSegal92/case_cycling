ActiveAdmin.register Event do
  form do |f|
      f.inputs do
        f.input :name
        f.input :date
        f.input :location
        f.input :website
      
      end
      f.buttons
    end
end
