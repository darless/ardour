#FROM ubuntu:22.04
FROM python:3.9

ENV DEBIAN_FRONTEND noninteractive

# Core
RUN apt update && \
    apt install -qy \
    vim \
    git

# Clone the emsdk repo
RUN cd /usr/local && \
    git clone https://github.com/emscripten-core/emsdk.git && \
    cd emsdk && \
    ./emsdk install latest && \
    ./emsdk activate latest


# Git config is annoying
RUN git config --global --add safe.directory '*'

# Ardour Dependencies
RUN apt update && apt install -qy \
    # Boost
    libboost1.74-dev \
    # ALSA
    libasound2-dev \
    # Glibmm
    libglibmm-2.4-dev \
    # sndfile
    libsndfile1-dev \
    # libarchive
    libarchive-dev \
    # liblo
    liblo-dev \
    # taglib
    libtag1-dev \
    # vamp-sdk
    vamp-plugin-sdk \
    # rubberband
    librubberband-dev \
    # jack
    libjack-dev \
    # fftw3f
    libfftw3-dev \
    # aubio
    libaubio-dev \
    # lrdf
    librdf0-dev \
    # samplerate
    libsamplerate0-dev \
    # lv2
    lv2-dev \
    # serd
    libserd-dev \
    # sord
    libsord-dev \
    # sratom
    libsratom-dev \
    # lilv
    liblilv-dev \
    # gtkmm-2.4
    libgtkmm-2.4-dev

# Additional dependencies to break things up
#RUN apt update && apt install -qy \
    
#RUN source /usr/local/emsdk/emsdk_env.sh

WORKDIR /app