class Trailer < ActiveRecord::Base

  attr_accessible :category_id, :title, :youtube_link, :answer0, :answer1, :answer2, :answer3, :correct_answer

  belongs_to :category

  validates :youtube_link, :category, :correct_answer, presence: true

  def youtube_id
    regex = /youtube.com.*(?:\/|v=)([^&$]+)/
    if match = youtube_link.match(regex)
      match[1]
    end
  end
end
