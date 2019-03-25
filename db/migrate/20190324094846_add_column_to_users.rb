class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :passward, :string, null: false
    add_index :users, :passward, unique: true
    add_column :users, :e_mail, :string, null: false
    add_index :users, :e_mail, unique: true
  end
end
