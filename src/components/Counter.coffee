{
  Comps
  Styl
  cfx
} = require 'cfx.rn'

{
  View
  Text
  TouchableOpacity
} = Comps

styles = Styl
  root:
    flex: 1
    alignItems: 'center'
    justifyContent: 'center'

  button:
    width: 120
    height: 30
    padding: 10
    backgroundColor: 'lightgray'
    alignItems: 'center'
    justifyContent: 'center'
    margin: 3

module.exports = cfx ->

  {
    counter
    increment
    incrementAsync
    decrement
    decrementAsync
  } = @props

  View style: styles.root
  ,
    Text {}
    , counter
    # , 0
  ,
    TouchableOpacity
      onPress: -> increment()
      style: styles.button
    ,
      Text {}
      , 'up'
  ,
    TouchableOpacity
      onPress: -> incrementAsync()
      style: styles.button
    ,
      Text {}
      , 'up(async)'
  ,
    TouchableOpacity
      onPress: -> decrement()
      style: styles.button
    ,
      Text {}
      , 'down'
  ,
    TouchableOpacity
      onPress: -> decrementAsync()
      style: styles.button
    ,
      Text {}
      , 'down(async)'
