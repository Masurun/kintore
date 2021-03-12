class Arm < ActiveHash::Base
  self.data = [
   
    { id: 2, name: 'トライセプトプレス' },
    { id: 3, name: 'アームカール' },
    { id: 4, name: 'トライセプス・エクステンション' },
    { id: 5, name: 'バイセプスカール' },
    { id: 6, name: 'コンバージングチェストプレス' },
    { id: 7, name: 'プリチャーカール' },
    { id: 8, name: 'ケーブルマシン' },
    { id: 9, name: 'バイセップ' },
    { id: 10, name: 'トライセップ' },
    { id: 11, name: 'ディップチンアシスト' }
  ]
  include ActiveHash::Associations
  has_many :records
end
