class Spine < ActiveHash::Base
  self.data = [
   
    { id: 2, name: 'ラッドプルダウン' },
    { id: 3, name: 'シーテッドロウ' },
    { id: 4, name: 'バックエクステンション' },
    { id: 5, name: 'バックエクステンション台' },
    { id: 6, name: 'ローワーバック' },
    { id: 7, name: 'ロウ' },
    { id: 8, name: 'ディップアシスト' },
    { id: 9, name: 'チンアシスト' },
    { id: 10, name: 'チンディップ' },
    { id: 11, name: 'プルダウン' },
    { id: 12, name: 'ローロウ' },
    { id: 13, name: 'ローロー' },
    { id: 14, name: 'シーテッドディップ' },
    { id: 15, name: 'ディップアシスト' }
  ]

  include ActiveHash::Associations
  has_many :records
end
