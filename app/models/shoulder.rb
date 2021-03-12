class Shoulder < ActiveHash::Base
  self.data = [
   
    { id: 2, name: 'ショルダー・プレス' },
    { id: 3, name: 'ラテラルレイズ' },
    { id: 4, name: 'リアデルトデルト' },
    { id: 5, name: 'デルタ' },
    { id: 6, name: 'インクラインプレス' },
    { id: 7, name: 'オーバーヘッドプレス' },
    { id: 8, name: 'マルチポジションプレス' }
  ]

  include ActiveHash::Associations
  has_many :records
end
