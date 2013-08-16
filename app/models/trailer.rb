class Trailer < ActiveRecord::Base
  attr_accessible :category_id, :title, :youtube_link

  belongs_to :category

  def youtube_id
    regex = /youtube.com.*(?:\/|v=)([^&$]+)/
    if match = youtube_link.match(regex)
      match[1]
    end
  end
end
