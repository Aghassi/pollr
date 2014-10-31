class CreateUserCourseJoinTable < ActiveRecord::Migration
  def change
    create_join_table :courses, :users do |t|
      t.index :course_id
      t.index :user_id
      t.boolean :admin
    end
  end
end
