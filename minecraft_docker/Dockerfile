FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl ca-certificates gnupg && curl -fsSL https://repositories.intel.com/graphics/intel-graphics.key | apt-key add -
RUN echo "deb [trusted=yes arch=amd64] https://repositories.intel.com/graphics/ubuntu focal main" > /etc/apt/sources.list.d/intel-graphics.list

RUN apt-get update && apt-get install -y wget xauth intel-opencl-icd intel-level-zero-gpu level-zero level-zero-dev

RUN wget -O minecraft_installer.deb 'https://launcher.mojang.com/download/Minecraft.deb'
RUN apt-get install -y ./minecraft_installer.deb

RUN touch ~/.Xauthority
RUN xauth add seba-dvsvsvsvsvs/unix:0 MIT-MAGIC-COOKIE-1 hgkjfdhfdkhldjgldhjldjh
CMD ["/usr/bin/minecraft-launcher"]
