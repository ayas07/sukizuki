class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :feeling
  belongs_to :color

  validates :text, presence: true

  with_options numericality: { other_than: 0, message: "を選択してください" } do
    validates :feeling_id
    validates :color_id
  end
end
