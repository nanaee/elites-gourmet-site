class Detail < ActiveRecord::Base
  belongs_to :restaurant
  # belongs_to :user

  validates :restaurant_id, presence: true
  validates :body, presence: true, allow_blank: false
end
