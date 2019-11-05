class ChangeUsersColumn < ActiveRecord::Migration[5.2]
  def change
reversible do |change|
change.up { change_column :users, :email, :string,  null: false, default: "" }
change.up { change_column :users, :encrypted_password, :string, null: false, default: "" }
change.down { change_column :users, :email, :string }
change.down { change_column :users, :encrypted_password, :string }
    end
  end
end
