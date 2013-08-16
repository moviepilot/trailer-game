module ApplicationHelper

  def youtube_player youtube_id
    "<iframe id=\"ytplayer\" type=\"text/html\" width=\"640\" height=\"390\" src=\"http://www.youtube.com/embed/#{youtube_id}\" frameborder=\"0\"/>".html_safe
  end

end
