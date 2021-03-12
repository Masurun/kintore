class Record < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  belongs_to_active_hash :shoulder_id
  belongs_to_active_hash :arm_id
  belongs_to_active_hash :breast_id
  belongs_to_active_hash :abs_id
  belongs_to_active_hash :spine_id
  belongs_to_active_hash :leg_id


  with_options presence: true do
   validates :weight
  end

  with_options length: { maximum: 300 } do
    validates :free_info
    validates :content
  end

  with_options numericality: {only_integer: true} do
    validates :weight
    validates :fat_per   
  end

end
