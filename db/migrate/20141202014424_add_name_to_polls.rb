class AddNameToPolls < ActiveRecord::Migration
  def change
    change_table :polls do |t|
      t.string :name
    end
  end
end
