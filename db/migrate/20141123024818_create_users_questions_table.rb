class CreateUsersQuestionsTable < ActiveRecord::Migration
  def change
    create_table :users_questions_tables do |t|
      t.references :user
      t.references :question
      t.integer :answer_id
    end
  end
end
