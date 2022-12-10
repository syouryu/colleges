class Post < ApplicationRecord
  belongs_to :user
  belongs_to :laboratory
  validates :title, { presence: true }
  validates :body, { presence: true, length: { maximum: 750 } }
  has_many :likes, dependent: :destroy



  def liked?(user)
    likes.where(user_id: user.id).exists?
  end
end
