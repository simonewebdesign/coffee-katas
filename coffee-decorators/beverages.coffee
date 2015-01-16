class exports.Espresso
  description: -> 'espresso'
  cost: -> 1.99

class exports.HouseBlend
  description: -> 'house blend coffee'
  cost: -> 2

class exports.DarkRoast
  description: -> 'dark roast'
  cost: -> 0

class exports.DoubleShot
  constructor: (@beverage) ->
  description: -> 'double ' + @beverage.description()
  cost: -> 1 + @beverage.cost()
