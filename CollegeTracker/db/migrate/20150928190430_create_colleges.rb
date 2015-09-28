class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
    	t.string :name, null:false
    	t.string :city
    	t.string :state
    	t.string :contact_info
    	t.string :address
    	t.float :tuition
    	t.boolean :financial_aid
    	t.boolean :scholarship
    	t.text :comments
    	
      t.timestamps null: false
    end
  end
end
