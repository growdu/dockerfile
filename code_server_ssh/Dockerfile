FROM code_server:v1

MAINTAINER duanyingshou

COPY entrypoint.sh /usr/bin/entrypoint.sh

EXPOSE 8080
WORKDIR /home/coder
ENTRYPOINT ["/usr/bin/entrypoint.sh", "--bind-addr", "0.0.0.0:8080", "/home/coder/"]
