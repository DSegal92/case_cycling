ActiveAdmin.register Ride do
  form do |f|
      f.inputs do
        f.input :name
      	f.input :distance
      	f.input :pace, :collection => ride.getPace
        f.input :location
        f.input :time
        f.input :discipline, :collection => ride.getTypes
        f.input :recurring
      end
      f.buttons
    end
end
