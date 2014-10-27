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
http = require('http')
url = "http://postlikeapirate.com/AJAXtranslate.php?typing="

module.exports =
  run: (args...) ->

    talk_like_a_pirate = false
    words = ''

    if args.length>0
      while (option = args.shift())?
        switch option

          when '-p', '--pirate'  then talk_like_a_pirate = true    

          else 

            if option[0] is '-'
              throw "ERR: Invalid option #{option}"
            else
              words += "#{option} "

    words = "No it isn't "+words

    if talk_like_a_pirate

      http.get url+escape(words), (res) ->
        res.on 'data', (chunk) ->
          console.log String(chunk)
      .on 'error', (err) ->
        console.log err

    else

      console.log words