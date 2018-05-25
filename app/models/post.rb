class Post < ApplicationRecord

  # 驗證 title 及 content 欄位必填
  validates :title, :body, :description, presence: true

  # 將 PhotoUploader 掛載到 Post Model
  mount_uploader :image, PhotoUploader

end
