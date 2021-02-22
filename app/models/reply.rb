class Reply < ApplicationRecord
  belongs_to :post
  belongs_to :receive_user, class_name: "User"
end
