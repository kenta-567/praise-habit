class Favorite < ApplicationRecord

  belongs_to :user, class_name: "User"
  belongs_to :post
end
