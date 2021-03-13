class Record < ApplicationRecord
  belongs_to :user
  has_one_attached :image1
  has_one_attached :image2
  has_one_attached :image3

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
  end

  

end
