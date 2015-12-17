class ChangePasswordToPasswordDigest < ActiveRecord::Migration
  def change
    rename_column :employees, :password, :password_digest
  end
end
