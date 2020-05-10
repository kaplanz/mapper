FROM debian:latest

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y \
        festival \
        lib32z1 \
        libcurl3-gnutls \
        libgtk-3-0 \
        libreadline-dev

WORKDIR /root/mapper

COPY mapper .
COPY cad2 /cad2

CMD ["./mapper", "/cad2/ece297s/public/maps/hamilton_canada.streets.bin"]
