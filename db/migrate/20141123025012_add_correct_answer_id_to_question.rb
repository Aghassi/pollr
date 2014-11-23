class AddCorrectAnswerIdToQuestion < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.integer :correct_answer_id
    end
  end
end
