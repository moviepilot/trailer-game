class Category extends Backbone.Model
  url: ->
    if @id
      "/trailers/#{id}"
    else
      "/trailers"