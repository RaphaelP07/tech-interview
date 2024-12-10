class Post < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 3000 }
  validates :publish_date, presence: true
end
