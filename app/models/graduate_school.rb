class GraduateSchool < ApplicationRecord
  has_many :laboratories
  validates :graduate_school_name, { presence: true }
end
