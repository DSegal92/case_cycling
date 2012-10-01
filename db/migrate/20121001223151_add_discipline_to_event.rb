class AddDisciplineToEvent < ActiveRecord::Migration
  def change
    add_column :events, :discipline, :string
  end
end
