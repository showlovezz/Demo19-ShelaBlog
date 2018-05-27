class Post < ApplicationRecord

  # 驗證 title 及 content 欄位必填
  validates :title, :body, :description, :image, presence: true

  # 將 PhotoUploader 掛載到 Post Model
  mount_uploader :image, PhotoUploader

  # FriendlyId 方法
  extend FriendlyId
  friendly_id :title, use: :slugged

end
