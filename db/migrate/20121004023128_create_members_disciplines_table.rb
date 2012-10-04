class CreateMembersDisciplinesTable < ActiveRecord::Migration
 def self.up
    create_table :members_disciplines, :id => false do |t|
        t.references :member
        t.references :discipline
    end
    add_index :members_disciplines, [:member_id, :discipline_id]
    add_index :members_disciplines, [:discipline_id, :member_id]
  end

  def self.down
    drop_table :members_disciplines
  end
end