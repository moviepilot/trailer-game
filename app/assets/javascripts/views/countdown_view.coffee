#= require 'moment'

class @CountdownView extends Backbone.View

  constructor: (@timeout, options) ->
    super options
    @startTime = new Date
    @interval = setInterval (=> @updateCountdown()), 100
    setTimeout (=> clearInterval(@interval)), timeout

  updateCountdown: ->
    duration = moment.duration(@timeout - (new Date() - @startTime))
    secondsString = ("0" + (duration.seconds() + 1)).slice(-2)
    @$el.html("0:#{secondsString}")

  remove: ->
    clearInterval(@interval)
    super