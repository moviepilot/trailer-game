class @Trailer extends Backbone.Model
  url: ->
    if @id
      "/trailers/#{id}"
    else
      "/trailers"