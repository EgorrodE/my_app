class Book < ActiveRecord::Base
  validates :title, :content, presence: true,  uniqueness: true

  # validates :image_url, format: {
  #              with: %r{\.(gif|jpg|png)\Z}i,
  #              message: 'Only GIF/PNG/JPEG image formats are supported'
  #
  #          }
  validates_length_of :content, minimum: 10, too_short: 'A chapter must be at least 10 symbols.'


  belongs_to :user
  # has_many :chapters
end
