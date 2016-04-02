class Like < ActiveRecord::Base
  belongs_to :likable, polimorphic: true

end