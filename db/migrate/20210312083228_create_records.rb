class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.text        :free_info       
      t.integer     :shoulder_id         
      t.string      :shoulder_info     
      t.integer     :arm_id
      t.string      :arm_info
      t.integer     :breast_id
      t.string      :breast_info
      t.integer     :abs_id
      t.string      :abs_info
      t.integer     :spine_id
      t.string      :spine_info
      t.integer     :leg_id
      t.string      :leg_info
      t.references  :user,               foreign_key: true
      t.timestamps
    end
  end
end
