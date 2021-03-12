class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.text        :food,                null: false
      t.text        :content
      t.integer     :weight,              null: false
      t.integer     :fat_per
      t.string      :free_name         
      t.integer     :free_count         
      t.integer     :free_weight
      t.integer     :shoulder_id         
      t.integer     :shoulder_count      
      t.integer     :shoulder_weight
      t.integer     :arm_id
      t.integer     :arm_count
      t.integer     :arm_weight
      t.integer     :breast_id
      t.integer     :breast_count
      t.integer     :breast_weight
      t.integer     :abs_id
      t.integer     :abs_count
      t.integer     :abs_weight
      t.integer     :spine_id
      t.integer     :spine_count
      t.integer     :spine_weight
      t.integer     :leg_id
      t.integer     :leg_count
      t.integer     :leg_weight
      t.references  :user,               foreign_key: true
      t.timestamps
    end
  end
end
