class CreateOfficers < ActiveRecord::Migration
  def change
    create_table :officers do |t|
      t.string :name
      t.string :majors
      t.string :minors
      t.string :contact
      t.text :bio
      t.string :picture

      t.timestamps
    end
  end
end
