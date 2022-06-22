### First you need to setup your environment.
Read what you need to setup on Linux: https://devblogs.microsoft.com/cppblog/linux-development-with-c-in-visual-studio/


sudo vim /etc/ssh/sshd_config
and change no to yes for allowpasswordauthentication

after above steps you can ssh to linux machine.


---

we need: 
vcpkg.json
CMakeLists.txt


For configuration:
cmake .. -DCMAKE_TOOLCHAIN_FILE=/home/g/vcpkg/scripts/buildsystems/vcpkg.cmake


cmake --build . --config Debug -j8




Docs link: 
https://vcpkg.io/en/docs/users/buildsystems/cmake-integration.html

