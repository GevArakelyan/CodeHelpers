# Example 1

sudo add-apt-repository ppa:ubuntu-toolchain-r/test # or find something else
sudo apt update && sudo apt upgrade -y

sudo apt install build-essential
sudo apt -y install gcc-11 g++-11 gcc-12 g++-12

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 110 --slave /usr/bin/g++ g++ /usr/bin/g++-11 --slave /usr/bin/gcov gcov /usr/bin/gcov-11 --slave /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-11 --slave /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-11  --slave /usr/bin/cpp cpp /usr/bin/cpp-11 && \

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 120 --slave /usr/bin/g++ g++ /usr/bin/g++-12 --slave /usr/bin/gcov gcov /usr/bin/gcov-12 --slave /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-12 --slave /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-12  --slave /usr/bin/cpp cpp /usr/bin/cpp-12;

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 11
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 11
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 12
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-12 12

sudo update-alternatives --config gcc

sudo update-alternatives --config g++

