class Face < ApplicationRecord
  belongs_to :collection

  def self.available_image?
    !self.image.nil?
  end
end
