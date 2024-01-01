class Institution < ApplicationRecord
  validates :name, :site, :title, :period, :description, presence: true

  has_many :tecnologies
  has_one_attached :logo
end
