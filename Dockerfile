FROM madebytimo/java-nodejs-python

RUN install-autonomous.sh install Basics Go Scripts ScriptsAdvanced ScriptsDevelopment \
    && apt update -qq && apt install -y -qq autoconf automake build-essential cmake \
    libfreetype6-dev libgnutls28-dev libnuma-dev libsdl2-dev libtool libxcb-shm0-dev \
    libxcb-xfixes0-dev meson ninja-build pkg-config yasm zip zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    \
    && git config --global user.email "builder@container" \
    && git config --global advice.detachedHead false

WORKDIR /root/builder
