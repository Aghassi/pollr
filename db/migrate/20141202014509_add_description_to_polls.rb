class AddDescriptionToPolls < ActiveRecord::Migration
  def change
    change_table :polls do |t|
      t.string :description
    end
  end
end
