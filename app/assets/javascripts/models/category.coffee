class @Category extends Backbone.Model
  url: ->
    if @id
      "/categories/#{id}"
    else
      "/categories"