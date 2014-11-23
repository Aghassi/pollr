class AddStartTimeToQuestions < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.datetime :start_time
    end
  end
end
