class Feeling < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '最高' },
    { id: 2, name: 'ヤバい' },
    { id: 3, name: '尊い' },
    { id: 4, name: '楽しい' },
    { id: 5, name: '面白い' },
    { id: 6, name: 'テンション上がる' },
    { id: 7, name: '癒される' },
    { id: 8, name: 'かわいい' },
    { id: 9, name: 'カッコいい' },
    { id: 10, name: 'キレイ' },
    { id: 11, name: '選択肢じゃ表せない' }
  ]

  include ActiveHash::Associations
  has_many :posts

end