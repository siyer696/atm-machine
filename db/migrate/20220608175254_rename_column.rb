class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :accounts, :type, :account_type
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    # rename_column, add_columen, remove_column, change_column
  end
end
