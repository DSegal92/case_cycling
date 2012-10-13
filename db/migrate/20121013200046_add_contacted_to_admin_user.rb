class AddContactedToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :contacted, :string
  end
end
