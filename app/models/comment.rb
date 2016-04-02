class Comment < ActiveRecord::Base
  belong_to :comentable, polymorphic: true
  has_many :likes, as: :likable

end