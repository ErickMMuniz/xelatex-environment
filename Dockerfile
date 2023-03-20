FROM moss/xelatex:v1.2.0

WORKDIR /app

RUN  apt-get update \
  && apt-get install -y vim \
  && apt-get install -y fontconfig \
  && rm -rf /var/lib/apt/lists/*

COPY assets/ assets

#ADD Alegreya font from TTF file
RUN cp -a assets/fonts/alegreya-ht-pro-full-pack-ttf /usr/local/share/fonts
RUN chmod 664 /usr/local/share/fonts/alegreya-ht-pro-full-pack-ttf/*
RUN fc-cache -f -v
