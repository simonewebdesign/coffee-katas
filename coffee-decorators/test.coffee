{expect} = require 'chai'
{Espresso, DarkRoast, HouseBlend, DoubleShot} = require './beverages'
{Mocha, Soya, Whip} = require './condiments'

suite 'Beverages and condiments', ->
  test 'single espresso', ->
    beverage = new Espresso
    expect(beverage.description()).to.equal 'espresso'
    expect(beverage.cost()).to.equal 1.99

  test 'double espresso', ->
    beverage = new Espresso
    beverage = new DoubleShot beverage
    expect(beverage.description()).to.equal 'double espresso'
    expect(beverage.cost()).to.equal 2.99

  test 'house blend and soya', ->
    beverage = new HouseBlend
    beverage = new Soya beverage
    expect(beverage.description()).to.equal 'house blend coffee with soya'
    expect(beverage.cost()).to.equal 2.10

  test 'dark roasted, double mocha with a whip', ->
    beverage = new DarkRoast
    beverage = new Mocha beverage
    beverage = new Mocha beverage
    beverage = new Whip beverage
    expect(beverage.description())
      .to.equal 'dark roast, mocha, mocha with a whip'
    expect(beverage.cost()).to.equal 3.34
