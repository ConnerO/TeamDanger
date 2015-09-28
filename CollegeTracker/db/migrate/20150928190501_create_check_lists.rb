class CreateCheckLists < ActiveRecord::Migration
  def change
    create_table :check_lists do |t|
    	t.date :deadline, null:false
    	t.boolean :transcript
    	t.boolean :essay
    	t.boolean :sat
    	t.boolean :act
    	t.boolean :application
    	t.boolean :early_acceptance
    	t.date :tour_date
    	t.integer :ranking
    	t.boolean :rec_letters
    	
      t.timestamps null: false
    end
  end
end
