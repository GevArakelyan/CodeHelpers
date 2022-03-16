# install archive signature from: https://apt.llvm.org/#llvmsh

sudo apt-get update && sudo apt-get upgrade -y

# Add GPG key from https://apt.llvm.org/ development branch
# add apt repository
sudo add-apt-repository 'deb http://apt.llvm.org/hirsute/ llvm-toolchain-hirsute main'
sudo apt-get update

# example install command below
sudo apt-get install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python3-clang
# Inside website find command to install all: also for install command you can add --install-recommends to install recommended packages

# The other option is bellow command.
sudo apt install clang lld --install-recommends