class RemoveDisciplineFromMember < ActiveRecord::Migration
  def up
    remove_column :members, :discipline
  end

  def down
    add_column :members, :discipline, :string
  end
end
