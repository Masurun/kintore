class Food < ApplicationRecord
  belongs_to :user
  has_one_attached :image4
  has_one_attached :image5
  has_one_attached :image6
  with_options numericality: {only_integer: true} do
    validates :weight
    validates :fat_per   
  end
end
