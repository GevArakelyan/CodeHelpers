#include <iostream>
#include <vector>


using namespace std;


int main() {
    vector v{1,2};

    cout << v[2] << endl;
    return 0;
}
//clang++ Sanityzer.cpp -std=c++2b -g -fsanitize=address -o app
// ./app
//clang++ Sanityzer.cpp -std=c++2b -g -fsanitize=memory -fsanitize-memory-track-origins -o app | will find unitialized memory
// if for some reason symbols not found, try: MSAN_SYMBOLIZER_PATH=/usr/lib/llvm-15/bin/llvm-symbolizer ./app