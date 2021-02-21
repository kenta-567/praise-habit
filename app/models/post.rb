class Post < ApplicationRecord

  belongs_to :user
  belongs_to :favorite, optional: true
end
