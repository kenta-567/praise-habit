class Reply < ApplicationRecord
  belongs_to :post
  belongs_to :receive_user, class_name: "User"

  validates :reply_content, presence: true

end
