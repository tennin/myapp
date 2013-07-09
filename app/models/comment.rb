class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  validates :body, presence: true, length: { minimum: 5, maximum: 30}
end
