class AddCollegeIdToCheckLists < ActiveRecord::Migration
  def change
    add_reference :check_lists, :college, index: true, foreign_key: true
  end
end
