class Project < ApplicationRecord
  validates :title, :description, :link, :repository, presence: true

  has_many :project_tecnologies
  has_many :tecnologies, through: :project_tecnologies

  has_one_attached :image
end
