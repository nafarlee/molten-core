local function combineReducers(reducers)
  return function(state, action)
    local newState = {}

    for subtree, reducer in pairs(reducers) do
      newState[subtree] = reducer(state[subtree], action)
    end

    return newState
  end
end

return combineReducers
