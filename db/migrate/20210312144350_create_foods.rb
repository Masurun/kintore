class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :morning
      t.string :lunch
      t.string :dinner
      t.string :other
      t.integer     :weight,              null: false
      t.integer     :fat_per
      t.references  :user,               foreign_key: true
      t.timestamps
    end
  end
end
