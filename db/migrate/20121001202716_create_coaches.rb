class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :contact
      t.text :bio
      t.string :picture

      t.timestamps
    end
  end
end
