class Breast < ActiveHash::Base
  self.data = [
   
    { id: 2, name: 'チェストプレス' },
    { id: 3, name: 'ぺクトルフライ' },
    { id: 4, name: 'インクラインチェストプレス' },
    { id: 5, name: 'フライ' },
    { id: 6, name: 'ベンチプレス' },
    { id: 7, name: 'パワーラック' },
    { id: 8, name: 'スミスマシン' },
    { id: 9, name: 'リアデルトフライ'},
    { id: 10, name: 'インクラインプレス'},
    { id: 11, name: 'デクラインプレス' },
    { id: 12, name: 'マルチポジションプレス' }
  ]

  include ActiveHash::Associations
  has_many :records
end
