class CreateUsersQuestionsJoinTable < ActiveRecord::Migration
  def change
    create_join_table(:users, :questions) do |t|
      t.integer :answer_id
    end
  end
end
