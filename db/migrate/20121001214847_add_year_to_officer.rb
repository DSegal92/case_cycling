class AddYearToOfficer < ActiveRecord::Migration
  def change
    add_column :officers, :year, :string
  end
end
