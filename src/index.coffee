{ Comp } = require 'cfx.rn'

# CounterApp = require './components/Counter'
CounterApp = require './App/index'

Comp.reg 'ExampleCfxRnCounter'
, -> CounterApp
