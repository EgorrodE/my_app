class Book < ActiveRecord::Base
  validates :title, :content, :image_url, presence: true
  validates :content, uniqueness: true
  validates :image_url, format: {
               with: %r{\.(gif|jpg|png)\Z}i,
               message: 'Only GIF/PNG/JPEG image formats are supported'

           }
  validates_length_of :content, minimum: 10, too_short: 'A chapter must be at least 10 words.'
end
