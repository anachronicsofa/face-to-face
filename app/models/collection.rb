class Collection < ApplicationRecord
  belongs_to :user
  has_many :faces
  has_many :rooms
end
