class Book < ActiveRecord::Base
  ratyrate_rateable "lol"
  validates :title, presence: true

  # validates :image_url, format: {
  #              with: %r{\.(gif|jpg|png)\Z}i,
  #              message: 'Only GIF/PNG/JPEG image formats are supported'
  #
  #          }



  belongs_to :user
  has_many :chapters, dependent: :destroy
  has_many :positions, as: :positionable
  has_many :comments, as: :commentable
  has_many :tags
  accepts_nested_attributes_for :chapters, reject_if: :all_blank, allow_destroy: true


end
