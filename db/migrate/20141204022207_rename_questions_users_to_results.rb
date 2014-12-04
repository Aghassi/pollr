class RenameQuestionsUsersToResults < ActiveRecord::Migration
  def change
    rename_table(:questions_users, :results)
  end
end
