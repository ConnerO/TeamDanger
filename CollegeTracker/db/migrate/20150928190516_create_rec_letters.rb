class CreateRecLetters < ActiveRecord::Migration
  def change
    create_table :rec_letters do |t|
    	t.string :name, null: false
    	t.string :title, null: false
    	t.boolean :complete
      t.timestamps null: false
    end
  end
end
