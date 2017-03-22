local function dispatch(self, action)
  return self._reducer(self.getState(), action)
end

return dispatch
