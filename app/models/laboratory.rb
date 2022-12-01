class Laboratory < ApplicationRecord
  belongs_to :graduate_school
  validates :name, { presence: true }
  validates :graduate_school_id, { presence: true }
  has_many :posts
end
