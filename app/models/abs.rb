class Abs < ActiveHash::Base
  self.data = [
   
    { id: 2, name: 'ロータリートルソー' },
    { id: 3, name: 'アブドミナルクランチ' },
    { id: 4, name: 'アブコースター' },
    { id: 5, name: 'クランチ台' },
    { id: 6, name: 'シットアップ' },
    { id: 7, name: 'トータルアブドミナル' },
    { id: 8, name: 'トルソローテーション' },
    { id: 9, name: 'アブドミナル' }
  ]

  include ActiveHash::Associations
  has_many :records
end
