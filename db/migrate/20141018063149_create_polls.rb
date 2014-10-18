class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.references :course, index: true
      t.datetime :date

      t.timestamps
    end
  end
end
