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
    width: 100
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
    decrement
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
      onPress: -> decrement()
      style: styles.button
    ,
      Text {}
      , 'down'
