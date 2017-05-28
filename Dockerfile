FROM i386/ubuntu

ENV WINEARCH "win32"

RUN apt-get update
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN apt-get install -y mesa-utils
RUN apt-get install -y xserver-xorg-video-all
RUN apt-get install ttf-mscorefonts-installer -y
RUN apt-get install wine -y

RUN mkdir -p /mnt/ut99

CMD /usr/bin/wine /mnt/ut99/System/UnrealTournament.exe
