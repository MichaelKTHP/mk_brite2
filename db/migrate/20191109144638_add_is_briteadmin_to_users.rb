class AddIsBriteadminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_briteadmin, :boolean
  end
end
