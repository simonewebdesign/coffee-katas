class Condiment
  constructor: (@beverage)->

class exports.Mocha extends Condiment
  description: -> 'mocha'
  cost: -> 0

class exports.Soya extends Condiment
  description: -> 'soya'
  cost: -> 0

class exports.Whip extends Condiment
  description: -> 'whip'
  cost: -> 0
