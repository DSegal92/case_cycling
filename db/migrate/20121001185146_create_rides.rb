class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.datetime :time
      t.string :location

      t.timestamps
    end
  end
end
