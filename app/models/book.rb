class Book < ApplicationRecord
  belongs_to :user
  attachment :profile_image
  
# title：空でないように設定してください。
  validates :title, presence: true
  
# body：空でない、かつ最大200文字までに設定してください。
  validates :body, presence: true
  validates :body, length: { maximum: 200}
  
end

