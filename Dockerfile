FROM madebytimo/java-nodejs-python

RUN install-autonomous.sh install Basics Scripts ScriptsAdvanced ScriptsDevelopment && \
    apt update -qq && apt install -y -qq autoconf automake build-essential cmake libfreetype6-dev libgnutls28-dev libsdl2-dev libtool libnuma-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev meson ninja-build pkg-config \
    yasm zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root/builder
