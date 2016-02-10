class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates: :name, presence:true
  validates: :address, presence:true
  validates: :phone_number, presence:true
  validates: :category, inclusion: {in: ["chinese", "italian", "french", "korean","american"], message: "%(value) is not a valid category"}
end
