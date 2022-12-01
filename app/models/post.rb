class Post < ApplicationRecord
  belongs_to :user
  belongs_to :laboratory
  validates :title, { presence: true }
  validates :body, { presence: true, length: { maximum: 750 } }
end
