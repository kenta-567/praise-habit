class Favorite < ApplicationRecord
  belongs_to :receive_user, class_name: "User"
  belongs_to :post
end
