class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content,:presence => { :message => " cannot be blank" }
  validates :rating, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }
  validates :rating, :numericality => { :message => " should be a number" }
  validates :rating, :presence => { :message => " cannot be blank" }
  validates :restaurant_id, :presence => { :message => " cannot be blank" }
end
