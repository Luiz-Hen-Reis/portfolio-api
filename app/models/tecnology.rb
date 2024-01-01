class Tecnology < ApplicationRecord
  validates :name, presence: true

  belongs_to :institution
  has_many :project_tecnologies
  has_many :projects, through: :project_tecnologies

  has_one_attached :icon
  has_one_attached :certification
end
