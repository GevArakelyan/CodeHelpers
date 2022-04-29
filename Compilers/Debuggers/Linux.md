## [Speeding up the Start-up of GDB](https://www.youtube.com/watch?v=2e2MGZKSvBY&list=PL6CJYn40gN6gf-G-o6syFwGrtq3kItEqI&index=38)

adde inside .gdbinit file 
``` set index-cache on```

Startup time may be as much as 4.6 time faster or 6.58% worse if no cache hit occurs.
Above command will store cache in ~/.cache/gdb directorory  
and you have to clean it yourself from time to time.

## [Reverse debugging with rr](https://www.youtube.com/watch?v=0uYsZEAQiLM&list=PL6CJYn40gN6gf-G-o6syFwGrtq3kItEqI&index=37)
[*] implement practical example and add here steps for that.