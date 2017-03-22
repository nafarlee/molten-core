local function dispatch(self, action)
  self._state = self._reducer(self:getState(), action)
end

return dispatch
