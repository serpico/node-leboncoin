{spawn, exec} = require 'child_process'

task 'build', 'continually build the JavaScript code', ->
      coffee = spawn 'coffee', ['-cw', '-o', 'lib', 'src']
      coffee.stdout.on 'data', (data) -> console.log data.toString().trim()
      coffeeExamples = spawn 'coffee', ['-cw', '-o', 'examples', 'examples']
      coffeeExamples.stdout.on 'data', (data) -> console.log data.toString().trim()

task 'doc', 'rebuild the Docco documentation', ->
    exec([
        'docco src/*.coffee'
    ].join(' && '), (err) ->
        throw err if err
    )
