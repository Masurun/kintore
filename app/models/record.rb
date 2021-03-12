class Record < ApplicationRecord
  belongs_to :record
  belongs_to_active_hash :shoulder_id
  belongs_to_active_hash :arm_id
  belongs_to_active_hash :breast_id
  belongs_to_active_hash :abs_id
  belongs_to_active_hash :spine_id
  belongs_to_active_hash :leg_id

  with_options presence: true do
   validates :food
   validates :weight
  end

  validates :content, length: { maximum: 300 }
  validates :free_name, length: { maximum: 30 }
  with_options numericality: {only_integer: true} do
    validates :weight
    validates :fat_per   
    validates :free_count
    validates :free_weight  
    validates :shoulder_count
    validates :shoulder_weight
    validates :arm_count
    validates :arm_weight
    validates :breast_count
    validates :breast_weight
    validates :abs_count
    validates :abs_weight
    validates :spine_count
    validates :spine_weight
    validates :leg_count
    validates :leg_weight
  end

end
