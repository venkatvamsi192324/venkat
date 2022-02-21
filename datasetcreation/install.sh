apt-get update && \
apt-get install -y --no-install-recommends \
    wget \
    curl \
    gnupg \
    pulseaudio \
    pulseaudio-utils \
    libpulse0 \
    libpulse-mainloop-glib0 \
    libasound2 \
    libjson-glib-1.0-0 \
    libevdev2 \
    libsoup2.4-1 \
    libspeexdsp1 \
    libwebrtc-audio-processing1 \
    sound-theme-freedesktop \
    unzip \
    sqlite \
    coreutils \
    ca-certificates \
    zip \
    gstreamer1.0-plugins-base-apps \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-pulseaudio \
&& curl -sS https://deb.nodesource.com/gpgkey/nodesource.gpg.key \
    | apt-key add - \
&& echo "deb https://deb.nodesource.com/node_12.x buster main" \
    > /etc/apt/sources.list.d/nodesource.list \
\
&& apt-get update \
&& apt-get install -y --no-install-recommends \
    nodejs



mkdir /src \
&& set -x \
&& apt-get install -y --no-install-recommends \
    build-essential \
    make \
    g++ \
    gettext \
    graphicsmagick \
    pkg-config \
    ninja-build \
    git \
    meson \
    libgstreamer1.0-dev \
    libasound2-dev \
    libglib2.0-dev \
    libjson-glib-dev \
    libsoup2.4-dev \
    libevdev-dev \
    libpulse-dev \
    libspeex-dev \
    libspeexdsp-dev \
    libwebrtc-audio-processing-dev \
&& cd /src \
&& mkdir genie-toolkit \
&& cd genie-toolkit \
&& git clone \
    "https://github.com/stanford-oval/genie-toolkit"