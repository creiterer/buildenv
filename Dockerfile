FROM debian:sid-slim

ARG UMLET=https://www.umlet.com/download/umlet_14_3/umlet-standalone-14.3.0.zip

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
clang-tidy \
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
wget \
vim \
graphviz \
inkscape \
hunspell \
hunspell-en-us \
hunspell-de-at \
uuid-dev \
unzip \
&& rm -rf /var/lib/apt/lists/*

RUN cd /opt && wget ${UMLET} && unzip ./*
ENV UMLET_ROOT /opt/Umlet/