class CreateDisciplinesMembersTable < ActiveRecord::Migration
 def self.up
    create_table :disciplines_members, :id => false do |t|
        t.references :discipline
        t.references :member
    end
    add_index :disciplines_members, [:discipline_id, :member_id]
    add_index :disciplines_members, [:member_id, :discipline_id]
  end

  def self.down
    drop_table :disciplines_members
  end
end