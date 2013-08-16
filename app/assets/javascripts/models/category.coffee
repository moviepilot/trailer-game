class Category extends Backbone.Model
  url: ->
    if @id
      "/categories/#{id}"
    else
      "/categories"

window.Category = Category