class Landmark < ApplicationRecord
  has_many :posts
  belongs_to :neighborhood
end
