//= require_tree .

class Skychart

  constructor: () ->
    @highlight()
    $('.show-all').click (e) => @showAll(e)
    $('.show-universal').click (e) => @showUniversal(e)
    $('.show-series1').click (e) => @showSeries1(e)
    $('.show-series2').click (e) => @showSeries2(e)

  highlight: ->
    $('tr').each (i, el) ->
      $el = $(el)
      if !$el.find('td').length then return
      series1 = if !!$el.find('td:nth-child(2)').text() then true else false
      series2 = if !!$el.find('td:nth-child(3)').text() then true else false
      if (series1 && series2)
        $el.css
          background: 'rgba(255,255,0, .26)'

  showAll: (e) ->
    e.preventDefault()
    $('tr').each (i, el) ->
      $(el).show()
      $(el).css(opacity: 1)

  showUniversal: (e) ->
    e.preventDefault()
    @showAll(e)
    $('tr').each (i, el) ->
      $el = $(el)
      if !$el.find('td').length then return
      series1 = if !!$el.find('td:nth-child(2)').text() then true else false
      series2 = if !!$el.find('td:nth-child(3)').text() then true else false
      if !(series1 && series2)
        $el.css(opacity: .15)

  showSeries1: (e) ->
    e.preventDefault()
    @showAll(e)
    $('tr').each (i, el) ->
      $el = $(el)
      if !$el.find('td').length then return
      series1 = if !!$el.find('td:nth-child(2)').text() then true else false
      series2 = if !!$el.find('td:nth-child(3)').text() then true else false

      if !series1
        $el.css(opacity: .15)

  showSeries2: (e) ->
    e.preventDefault()
    @showAll(e)
    $('tr').each (i, el) ->
      $el = $(el)
      if !$el.find('td').length then return
      series1 = if !!$el.find('td:nth-child(2)').text() then true else false
      series2 = if !!$el.find('td:nth-child(3)').text() then true else false

      if !series2
        $el.css(opacity: .15)

window.skychart = new Skychart()