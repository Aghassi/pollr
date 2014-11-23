class FixUsersQuestionTableName < ActiveRecord::Migration
  def change
    rename_table :users_questions_tables, :users_questions
  end
end
