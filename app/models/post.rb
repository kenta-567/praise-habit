class Post < ApplicationRecord

  belongs_to :receive_user, class_name: "User"
  belongs_to :user
  belongs_to :favorite, optional: true
  has_many :replies, dependent: :destroy
end
