class ChangeColumnToGroup < ActiveRecord::Migration[5.0]
  def change
    change_column :groups, :chat_name, :string, null: false
  end
end
