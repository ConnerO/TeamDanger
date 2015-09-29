class AddUserIdToCheckLists < ActiveRecord::Migration
  def change
    add_reference :check_lists, :user, index: true, foreign_key: true
  end
end
