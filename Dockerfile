FROM alpine:3.4
RUN apk update

RUN mkdir -p /src/xplanet
WORKDIR /src/xplanet
COPY . /src/xplanet

RUN apk add build-base gcc abuild binutils binutils-doc gcc-doc libpng-dev jpeg-dev freetype-dev

RUN ./configure
RUN make

ENTRYPOINT ["/src/xplanet/src/xplanet"]
