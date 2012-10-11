class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.date :date
      t.text :contents

      t.timestamps
    end
  end
end
