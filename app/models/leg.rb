class Leg < ActiveHash::Base
  self.data = [
   
    { id: 2, name: 'レッグプレス' },
    { id: 3, name: 'レッグエクステンション' },
    { id: 4, name: 'アダクター' },
    { id: 5, name: 'レッグカール' },
    { id: 6, name: 'アブダクター' },
    { id: 7, name: 'グルート' },
    { id: 8, name: 'カーフエクステンション' },
    { id: 9, name: 'リニアレッグプレス' },
    { id: 10, name: 'マルチヒップ' },
    { id: 11, name: 'テクノジムレッグプレス' },
    { id: 12, name: 'テクノジムリアキック' },
    { id: 13, name: '４５度レッグプレス' },
    { id: 14, name: 'シーテッドカーフ' },
    { id: 15, name: 'インナーサイ' },
    { id: 16, name: 'アウターサイ' },
    { id: 17, name: 'プローンレッグプレス' },
    { id: 18, name: 'アブアダクター' },
    { id: 19, name: 'グルートマスター' },
    { id: 20, name: 'ヒップアブダクション' },
    { id: 21, name: 'シーテッドレッグカール' },
    { id: 22, name: 'マルチヒップ' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
