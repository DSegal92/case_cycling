class AddPositionToOfficer < ActiveRecord::Migration
  def change
    add_column :officers, :position, :string
  end
end
