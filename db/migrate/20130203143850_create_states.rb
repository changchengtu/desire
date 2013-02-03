class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.integer :toWho
      t.integer :howMuch
      t.integer :forWhat
      t.boolean :confirm
      t.boolean :return

      t.references :user

      t.timestamps
    end
  end
end
