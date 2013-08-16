class Category extends Backbone.model
  url: ->
    if @id
      "/trailers/#{id}"
    else
      "/trailers"