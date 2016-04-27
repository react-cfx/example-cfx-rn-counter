{ assign } = Object
{
  cfx
  connect
} = require 'cfx.rn'

Counter = require '../components/Counter'
counterActions = (
  require 'cfx.example-cfx-redux-counter'
).actions

CounterApp = cfx ->
  {
    state
    actions
  } = @props

  Counter(
    assign {}, actions
    , counter: state.count
  )

module.exports = connect(
  (state) -> state.countApp
  counterActions
  CounterApp
)
