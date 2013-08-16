module ApplicationHelper

  def youtube_player youtube_id
    "<iframe id=\"ytplayer=#{youtube_id}\" type=\"text/html\" width=\"400\" height=\"250\" src=\"http://www.youtube.com/embed/#{youtube_id}\" frameborder=\"0\"></iframe>".html_safe
  end

end
