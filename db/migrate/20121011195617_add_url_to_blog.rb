class AddUrlToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :url, :string
  end
end
