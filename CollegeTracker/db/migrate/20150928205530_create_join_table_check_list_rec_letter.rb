class CreateJoinTableCheckListRecLetter < ActiveRecord::Migration
  def change
    create_join_table :check_lists, :rec_letters do |t|
      # t.index [:check_list_id, :rec_letter_id]
      # t.index [:rec_letter_id, :check_list_id]
    end
  end
end
