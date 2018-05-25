class Post < ApplicationRecord

  # 驗證 title 及 content 欄位必填
  validates :title, :body, :description, presence: true

end
