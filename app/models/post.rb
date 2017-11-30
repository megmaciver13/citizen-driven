class Post < ApplicationRecord
  belongs_to :neighborhood
  belongs_to :user

  geocoded_by :location
  after_validation :geocode
end
