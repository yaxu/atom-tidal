:set prompt ""
:module Sound.Tidal.Context

let newStream = stream "127.0.0.1" 7771 dirt

d1 <- newStream
d2 <- newStream
d3 <- newStream
d4 <- newStream
d5 <- newStream
d6 <- newStream
d7 <- newStream
d8 <- newStream
d9 <- newStream


(cps, getNow) <- bpsUtils

let bps x = cps (x/2)
let hush = mapM_ ($ silence) [d1,d2,d3,d4,d5,d6,d7,d8,d9]
let solo = (>>) hush

:set prompt "tidal> "
