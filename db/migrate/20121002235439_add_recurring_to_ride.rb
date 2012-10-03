class AddRecurringToRide < ActiveRecord::Migration
  def change
    add_column :rides, :recurring, :boolean
  end
end
