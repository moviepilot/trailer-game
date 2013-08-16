class Category extends Backbone.model
  url: ->
    if @id
      "/categories/#{id}"
    else
      "/categories"