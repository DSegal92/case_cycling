class AddColumnUsacCategoryToMember < ActiveRecord::Migration
  def change
    add_column :members, :usacCategory, :string
  end
end
