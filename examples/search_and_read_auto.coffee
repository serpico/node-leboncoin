#!/usr/bin/env coffee

# clear terminal
process.stdout.write '\u001B[2J\u001B[0;0f'

leboncoin = require '..'

search = new leboncoin.Search
  region:   'haute_normandie'
  query:    'twingo'
  category_attrs:
    ps:    3         # prix min          =  750
    pe:    8	     # prix max          = 2000
    ms:    150000    # kilométrage min   =
    me:    300000    # kilométrage max   =
    rs:    1995      # année-modèle min  =
    re:    1997      # année-modèle max  =
    fu:    1         # carburant         =
    gb:    1         # transmission      =
  category: 'voitures'

i = 0

search.perform (response) ->
  if response.error
    console.err response.error
    return

  for result in response.results
    continue unless result.image # comment to get detail for items without images
    console.log 'search', result

    item = new leboncoin.Item result

    item.getPhoneNumber (number) ->
      console.log 'phone number', number

    item.perform (result) ->
      console.log 'item page', result.attrs

    return # uncomment to do only one item detail
