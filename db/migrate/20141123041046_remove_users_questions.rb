class RemoveUsersQuestions < ActiveRecord::Migration
  def change
    drop_table :users_questions
  end
end
