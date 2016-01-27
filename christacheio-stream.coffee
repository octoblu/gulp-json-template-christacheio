_ = require 'lodash'
{Transform} = require 'stream'
christacheio = require 'christacheio'

PLUGIN_NAME = 'gulp-json-template-christacheio'

class ChristacheioStream extends Transform
  constructor: ({@data}={}) ->
    super objectMode: true

  _transform: (file, enc, next) =>
    return @emit 'error', new PluginError PLUGIN_NAME, "#{PLUGIN_NAME}: Streaming not supported" if file.isStream()

    fileContents = file.contents.toString()
    firstPassResults = @firstPass fileContents, @data
    secondPassResults = @secondPass firstPassResults, @data
    file.contents = new Buffer(secondPassResults)
    @push file
    next()


  firstPass: (fileContents, context) =>
    context = _.defaults {msg: context}, context
    options = {tags: ['"{{', '}}"'], transformation: JSON.stringify}
    christacheio fileContents, context, options

  secondPass: (str,context) =>
    context = _.defaults {msg: context}, context
    christacheio str, context, transformation: @escapeDoubleQuote

  escapeDoubleQuote: (data) =>
    return unless data?
    return data.toString().replace /"/g, '\\"'

module.exports = ChristacheioStream
