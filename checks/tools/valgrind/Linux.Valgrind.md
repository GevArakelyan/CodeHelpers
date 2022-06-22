## Valgrind: Linux

- Leak checks
- Memory checks
Example: Conditional move depends on uninitialised value.
- Deadlocks

- Invalid reads
- Invalid writes

```
valgrind --leak-check=full --show-reachable=yes --track-origins=yes --log-file=valgrind.log ./app
valgrind --tool=memcheck --leak-check=full --show-reachable=yes --track-origins=yes --log-file=valgrind.log ./app

valgrind --tool=helgrind --log-file=valgrind.log ./app
- Multiple threads writing to the same memory location without synchronization.

valgrind --tool=cachegrind ./app

valgrind --tool=callgrind ./app
kcachegrind callgrind.out.kcg.%p
```


