FROM debian:sid-slim

RUN apt update && apt install -y \
# build stuff
make \
cmake \
meson \
ninja-build \
# c/c++ stuff
gcc \
clang \
# python stuff
python2 \
python3 \
# go stuff
golang \
golang-golang-x-tools \
# latex stuff
biber \
latexmk \
texlive-full \
# misc stuff
curl \
vim \
hunspell \
hunspell-de-at \
&& rm -rf /var/lib/apt/lists/*
