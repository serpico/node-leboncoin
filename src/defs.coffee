regions_common =
  ['', 'occasions', 'bonnes_affaires']

regions_tree =
  alsace: [
    'bas_rhin'
    'haut_rhin'
    ]
  aquitaine: []
  auvergne: []
  basse_normandie: []
  bourgogne: []
  bretagne: []
  centre: []
  champagne_ardenne: []
  corse: []
  franche_comte: []
  haute_normandie: [
    'eure'
    'seine_maritime'
    ]
  ile_de_france: [
    "paris"
    "seine_et_marne"
    "yvelines"
    "essonne"
    "hauts_de_seine"
    "seine_saint_denis"
    "val_de_marne"
    "val_d_oise"
    ]
  languedoc_rousillon: []
  limousin: []
  lorraine: []
  midi_pyrenees: []
  nord_pas_de_calais: []
  pays_de_la_loire: []
  picardie: []
  poitou_charentes: []
  provence_alpes_cote_d_azur: []
  rhone_alpes: []
  guadeloupe: []
  martinique: []
  guyane: []
  reunion: []

categories_tree =
  _vehicules_:
    voitures: {
      ms: {           # kilométrage min
   type: Number
  },
      me: {           # kilométrage max
   type: Number
      },   
ps: {                 # prix min
        type: 'list',
        values: {
          0: 0,
          1: 250,
          2: 500,
          3: 750,
          4: 1000,
          5: 1500,
          6: 2000,
          7: 2500,
          8: 3000,
          9: 3500,
          10: 4000,
          11: 4500,
          12: 5000,
          13: 5500,
          14: 6000,
	  15: 6500,
	  16: 7000,
	  17: 7500,
	  18: 8000,
	  19: 8500,
	  20: 9000,
	  21: 9500,
	  22: 10000,
	  23: 11000,
	  24: 12000,
	  25: 13000,
	  26: 14000,
	  27: 15000,
	  28: 17500,
	  29: 20000,
	  30: 22500,
	  31: 25000,
	  32: 27500,
	  33: 30000,
	  34: 32500,
	  35: 35000,
	  36: 37500,
	  37: 40000,
	  38: 42500,
	  39: 45000,
	  40: 47500,
	  41: 50000
        }
      },

pe: {                 # prix max
        type: 'list',
        values: {
          1: 250,
          2: 500,
          3: 750,
          4: 1000,
          5: 1500,
          6: 2000,
          7: 2500,
          8: 3000,
          9: 3500,
          10: 4000,
          11: 4500,
          12: 5000,
          13: 5500,
          14: 6000,
	  15: 6500,
	  16: 7000,
	  17: 7500,
	  18: 8000,
	  19: 8500,
	  20: 9000,
	  21: 9500,
	  22: 10000,
	  23: 11000,
	  24: 12000,
	  25: 13000,
	  26: 14000,
	  27: 15000,
	  28: 17500,
	  29: 20000,
	  30: 22500,
	  31: 25000,
	  32: 27500,
	  33: 30000,
	  34: 32500,
	  35: 35000,
	  36: 37500,
	  37: 40000,
	  38: 42500,
	  39: 45000,
	  40: 47500,
	  41: 50000
        }
      },

fu: {
        type: 'array',
        values: {
          1: 'essence',
          2: 'diesel',
          3: 'GPL',
          4: 'electrique',
          5: 'autre'
        }
      }
    },

gb: {
        type: 'array',
        values: {
          1: 'manuelle',
          2: 'automatique'
        }
      }
    },

    motos:  {}
    caravaning: {}
    utilitaires: {}
    equipement_auto: {}
    equipement_moto: {}
    equipement_caravaning: {}
    nautisme: {}
    equipement_nautisme: {}
  _immobilier_:
    ventes_immobilieres: {}
    locations:
      mrs:            # loyer min
        type: Number
      mre:            # loyer max
        type: Number
      ros:            # pieces min
        type: Number
      roe:            # pieces max
        type: Number
      sqs:            # surface min
        type: 'list'
        values:
          0:  0
          1:  20
          2:  25
          3:  30
          4:  35
          5:  40
          6:  50
          7:  60
          8:  70
          9:  80
          10: 90
          11: 100
          12: 110
          13: 120
          14: 150
          15: 300
      sqe:            # surface max
        type: 'list'
        values:
          0:  0
          1:  20
          2:  25
          3:  30
          4:  35
          5:  40
          6:  50
          7:  60
          8:  70
          9:  80
          10: 90
          11: 100
          12: 110
          13: 120
          14: 150
          15: 300
          16: '350+'
      ret:
        type: 'array'
        values:
          1: 'maison'
          2: 'appartement'
          3: 'terrain'
          4: 'parking'
          5: 'autre'
    colocations: {}
    locations_de_vacances: {}
    bureaux_commerces: {}
  _multimedia_: {}              # TODO
  _maison_: {}                  # TODO
  _loisirs_: {}                 # TODO
  _emploi_services_: {}         # TODO
  _:
    autres: {}

module.exports =
  regions_tree:     regions_tree
  regions:      k for k, v of regions_tree
  categories_tree:  categories_tree
  categories:     k for k, v of categories_tree
