class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :standing
      t.string :majors
      t.string :minors
      t.string :collegeCategory
      t.integer :usacCategory
      t.text :bio
      t.boolean :isRacer
      t.string :picture

      t.timestamps
    end
  end
end
