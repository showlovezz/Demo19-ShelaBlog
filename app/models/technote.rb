class Technote < ApplicationRecord

  validates :title, :body, :description, :image, presence: true

  mount_uploader :image, PhotoUploader

  extend FriendlyId
  friendly_id :title, use: :slugged

end
