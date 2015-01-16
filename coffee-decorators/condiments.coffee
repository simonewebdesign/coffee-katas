class Condiment
  constructor: (@beverage) ->

class exports.Mocha extends Condiment
  description: -> @beverage.description() + ', mocha'
  cost: -> @beverage.cost() + 1.34

class exports.Soya extends Condiment
  description: -> "#{@beverage.description()} with soya"
  cost: -> @beverage.cost() + .10

class exports.Whip extends Condiment
  description: -> "#{@beverage.description()} with a whip"
  cost: -> +parseFloat(@beverage.cost() + .66).toFixed(2) # http://stackoverflow.com/a/12830454
