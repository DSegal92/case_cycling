class RemoveUsacCategoryFromMember < ActiveRecord::Migration
  def up
  	remove_column :members, :usacCategory
  end

  def down
  	add_column :members, :usacCategory, :integer
  end
end
