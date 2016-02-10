class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates: :content, presence:true
  validates: :rating, inclusion: {in:(O..5), message: "Choose a rating between 0 & 5"}
end
