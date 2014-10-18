class AddPollReferenceToQuestions < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.references :poll, index: true
    end
  end
end
