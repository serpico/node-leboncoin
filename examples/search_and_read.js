// Generated by CoffeeScript 1.7.1
(function() {
  var i, leboncoin, search;

  process.stdout.write('\u001B[2J\u001B[0;0f');

  leboncoin = require('..');

  search = new leboncoin.Search({
    region: 'haute_normandie',
    query: 'boxe OR box OR stockage OR stocker OR cave OR garage NOT studio NOT F1 NOT F2 NOT F3 NOT T1 NOT T2 NOT T3 NOT appartement',
    category_attrs: {
      mre: 600
    },
    category: 'locations'
  });

  i = 0;

  search.perform(function(response) {
    var item, result, _i, _len, _ref;
    if (response.error) {
      console.err(response.error);
      return;
    }
    _ref = response.results;
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      result = _ref[_i];
      if (!result.image) {
        continue;
      }
      console.log('search', result);
      item = new leboncoin.Item(result);
      item.getPhoneNumber(function(number) {
        return console.log('phone number', number);
      });
      item.perform(function(result) {
        return console.log('item page', result.attrs);
      });
      return;
    }
  });

}).call(this);
