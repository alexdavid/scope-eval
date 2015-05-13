module.exports = (source, scope) ->
  keys = []
  values = []

  for own key, value of obj
    continue if key is 'this'
    keys.push key
    values.push value

  Function(keys..., source).apply scope.this, values
