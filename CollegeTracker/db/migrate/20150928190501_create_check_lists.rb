class CreateCheckLists < ActiveRecord::Migration
  def change
    create_table :check_lists do |t|

      t.timestamps null: false
    end
  end
end
