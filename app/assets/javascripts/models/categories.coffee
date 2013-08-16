# = require './category'
class @Categories extends Backbone.Collection
  model: Category

  url: '/api/categories'

window.Categories = Categories