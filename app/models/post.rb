class Post < ApplicationRecord
  belongs_to :receive_user, class_name: "User"
  belongs_to :user
  has_one :favorite, dependent: :destroy
  has_many :replies, dependent: :destroy

  validates :post_content, presence: true
  scope :last_month, -> { where(created_at: Time.now.prev_month.beginning_of_month..Time.now.prev_month.end_of_month) }
  scope :current_month, -> { where(created_at: Time.now.beginning_of_month..Time.now.end_of_month) }
end
