FROM debian:sid-slim

# see https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=863199 
# for the reason why the following command is necessary
RUN mkdir -p /usr/share/man/man1
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
# java stuff
default-jre \
# misc stuff
git \
curl \
vim \
hunspell \
hunspell-en-us \
hunspell-de-at \
uuid-dev \
&& rm -rf /var/lib/apt/lists/*
