local import = require 'import.init'

local function createStore(reducer, preloadedState)
  return {
    _reducer = reducer,
    _state = preloadedState,
    getState = import './get-state.lua',
    dispatch = import './dispatch.lua',
  }
end

return createStore
