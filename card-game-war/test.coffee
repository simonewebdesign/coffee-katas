{expect} = require 'chai'
{playRound} = require './'

describe 'playRound()', ->
  test = (player1, player2, winner)->
    expect(playRound player1, player2).to.equal arguments[winner]

  it 'will choose the highest rank to win the round', ->
    test ['spade', 2], ['spade', 3], 1

  it 'will choose queens as higher rank than jacks', ->
    test ['spade', 'jack'], ['spade', 'queen'], 1

  it 'will choose kings as higher rank than queens', ->
    test ['diamond', 'king'], ['diamond', 'queen'], 0

  it 'will choose aces as higher rank than kings', ->
    test ['club', 'king'], ['club', 'ace'], 1

  describe 'when ranks are equal', ->
    it 'will choose spades as higher rank than clubs', ->
      test ['club', 'king'], ['spade', 'king'], 0

    it 'will choose diamonds as higher rank than clubs', ->
      test ['club', 'king'], ['diamond', 'king'], 1

    it 'will choose hearts as higher rank than diamonds', ->
      test ['heart', 'king'], ['diamond', 'king'], 0
