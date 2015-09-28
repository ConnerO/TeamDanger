class CreateRecLetters < ActiveRecord::Migration
  def change
    create_table :rec_letters do |t|

      t.timestamps null: false
    end
  end
end
