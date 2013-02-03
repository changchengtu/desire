class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :what
      t.integer :price
      t.boolean :achieve

      t.references :user

      t.timestamps
    end
  end
end
