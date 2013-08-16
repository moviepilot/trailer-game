class Trailer < ActiveRecord::Base
  attr_accessible :category_id, :title, :youtube_link

  belongs_to :category

end
