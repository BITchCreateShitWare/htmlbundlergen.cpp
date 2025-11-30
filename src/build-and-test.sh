# set -xe

clang++-19 html_bundler_gen.cpp -o htmlbundlergen

echo "========================================================"
echo "TEST the app, require you have clang-19 webkit2gtk stuff"

echo "========================================================"

echo "RAW build using: "
echo "$ clang++-19 example.cpp -o generated_app `pkg-config --cflags --libs webkit2gtk-4.1` -lpthread -ldl -std=c++23 -Wno-c23-extension"

echo "========================================================"

echo "AUTO build using: "
./htmlbundlergen example.html -o example.cpp -b

mv generated_app /tmp/ && /tmp/generated_app

echo "========================================================"

echo "you can remove /tmp/generated_app now"

rm -vi example.cpp /tmp/generated_app htmlbundlergen