class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :url
      t.boolean :enabled

      t.timestamps
    end
  end
end
