class Post < ApplicationRecord

  belongs_to :receive_user, class_name: "User"
  belongs_to :user
  has_one :favorite, dependent: :destroy
  has_many :replies, dependent: :destroy

  validates :post_content, presence: true
end
