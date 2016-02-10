class Restaurant < ActiveRecord::Base
  CATEGORIES = ["chinese", "italian", "french", "korean","japanese", "american", "belgian"]
  has_many :reviews , dependent: :destroy
  validates :name, :presence => { :message => " cannot be blank" }
  validates :address, :presence => { :message => " cannot be blank" }
  validates :category, inclusion: {in: Restaurant::CATEGORIES }
end

