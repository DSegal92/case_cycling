class AddDisciplineToRide < ActiveRecord::Migration
  def change
    add_column :rides, :discipline, :string
  end
end
