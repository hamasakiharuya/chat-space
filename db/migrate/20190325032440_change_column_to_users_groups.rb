class ChangeColumnToUsersGroups < ActiveRecord::Migration[5.0]
  def change
   change_column_null :users_groups, :user_id, false
   change_column_null :users_groups, :group_id, false
  end
end

