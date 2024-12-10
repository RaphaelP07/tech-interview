class Post < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 3000 }
  validates :publish_date, presence: true

  scope :for_homepage, -> () {
    select(%(
      p.id, p.user_id, p.active, p.featured, p.publish_date, p.name, p.content,
      CONCAT(u.first_name, ' ', u.last_name) AS user_name
    ))
    .from(%(
      posts p
      JOIN users u ON u.id = p.user_id
    ))
    .where("p.publish_date <= ?", Date.today)
    .order("p.publish_date desc")
  }
end
