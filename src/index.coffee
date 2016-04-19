CounterApp = require './App/index'
# CounterApp = require './components/Counter'
{ Comp } = require 'cfx.rn'

Comp.reg 'ExampleCfxRnCounter'
, -> CounterApp
