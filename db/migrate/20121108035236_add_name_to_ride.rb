class AddNameToRide < ActiveRecord::Migration
  def change
    add_column :rides, :name, :string
  end
end
