FROM debian:11

ADD https://github.com/zoni/obsidian-export/releases/download/v21.9.1/obsidian-export_Linux-x86_64 /bin/obsidian-export
ADD https://github.com/gohugoio/hugo/releases/download/v0.89.4/hugo_extended_0.89.4_Linux-64bit.deb /opt/hugo.deb

COPY ./entrypoint.sh /entrypoint.sh

RUN dpkg -i /opt/hugo.deb && \
  chmod +x /bin/obsidian-export

WORKDIR "/repo"
ENTRYPOINT ["/entrypoint.sh"]
