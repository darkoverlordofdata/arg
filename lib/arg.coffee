#+--------------------------------------------------------------------+
#| Arg!
#+--------------------------------------------------------------------+
#| Copyright DarkOverlordOfData (c) 2014
#+--------------------------------------------------------------------+
#|
#| 'Tis file be part 'o Arg
#|
#| Arg! be free software; ye can copy, modify, 'n distribute 
#| it under th' terms 'o th' MIT License
#|
#+--------------------------------------------------------------------+
#

Object.defineProperties module.exports,

  matey: # matey command
    get: ->
      require('./matey.coffee').run

  python: # python command
    get: ->
      require('./python.coffee').run
