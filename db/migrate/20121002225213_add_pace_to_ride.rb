class AddPaceToRide < ActiveRecord::Migration
  def change
    add_column :rides, :pace, :string
  end
end
