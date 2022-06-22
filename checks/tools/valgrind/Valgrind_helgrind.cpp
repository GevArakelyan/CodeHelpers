#include <stdio.h>
#include <stdlib.h>

int result = 0;

void ThreadAdd(int val)
{
    for (int i = 0; i < val;++ i)
    {
        result += i;
    }

}

#include <thread>
#include <vector>
using namespace std;


int main() {
    vector<thread> threads;
    for (int i = 0; i < 100; ++i){
        threads.push_back(thread(ThreadAdd, i));
    }

    for (int i = 0; i < 100; ++i){
        threads[i].join();
    }

    printf("result = %d\n", result);
    return 0;
}
//valgrind --tool=helgrind ./app