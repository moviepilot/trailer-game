#= require './trailer'
class @Trailers extends Backbone.Collection
  model: Trailer

  url: -> "/api/categories/#{@categoryId}/trailers"