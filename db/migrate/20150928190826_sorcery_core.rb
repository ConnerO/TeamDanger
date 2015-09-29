class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date	:grad_date
      t.integer :app_year
      t.string :gender
      t.string :city
      t.string :state

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end