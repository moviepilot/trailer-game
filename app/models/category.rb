class Category < ActiveRecord::Base
  attr_accessible :name, :cover_url

  has_many :trailers

end
