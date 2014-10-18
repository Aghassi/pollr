class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.json :answers
      t.integer :duration
      t.string :question

      t.timestamps
    end
  end
end
