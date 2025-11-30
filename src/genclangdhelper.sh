set -xe

bear -- clang++-19 example.cpp -o generated_app `pkg-config --cflags --libs webkit2gtk-4.1` -lpthread -ldl -std=c++23 -Wno-c23-extension
