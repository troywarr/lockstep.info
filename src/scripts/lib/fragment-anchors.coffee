# add fragment anchors to <h2> and <h3> headings
class FragmentAnchors

  constructor: ->
    @$headings = $('h2, h3')

  wrapAnchor: ($heading) ->
    $heading.addClass('fragment-anchor')
    $anchor = $("<a href=\"##{$heading.attr('id')}\"></a>") # TODO: render Jade template
    $icon = $('<svg class="icon icon-link"><use xlink:href="#icon-link"></use></svg>') # TODO: render Jade template
    $heading.wrapInner($anchor)
    $heading.find('a').prepend($icon)

  init: =>
    @$headings.each (i, element) =>
      $heading = $(element)
      @wrapAnchor($heading)



# register
(window.lockstepInfo ?= {}).FragmentAnchors = FragmentAnchors
