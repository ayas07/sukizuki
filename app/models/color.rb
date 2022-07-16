class Color < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'レッド' },
    { id: 2, name: 'ピンク' },
    { id: 3, name: 'オレンジ' },
    { id: 4, name: 'イエロー' },
    { id: 5, name: 'グリーン' },
    { id: 6, name: 'ブルー' },
    { id: 7, name: 'パープル' },
    { id: 8, name: 'ブラウン' },
    { id: 9, name: 'グレー' }
  ]

  include ActiveHash::Associations
  has_many :posts

end