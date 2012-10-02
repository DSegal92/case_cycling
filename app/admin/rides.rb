ActiveAdmin.register Ride do
  form do |f|
      f.inputs do
        f.input :location
        f.input :time
        f.input :discipline, :collection => ride.getTypes
      end
      f.buttons
    end
end
