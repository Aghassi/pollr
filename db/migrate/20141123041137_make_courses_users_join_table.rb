class MakeCoursesUsersJoinTable < ActiveRecord::Migration
  def change
    create_join_table(:courses, :users) do |t|
      t.boolean :admin
    end
  end
end
