# Dockerfile for providing  a cross developing environment for
# AmigaOS 4.x.
#
# (c) 2017 by Sebastian Bauer
#

FROM debian:jessie

RUN echo "deb http://dl.bintray.com/sba1/adtools-deb /"  >>/etc/apt/sources.list

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y --force-yes --no-install-recommends \
	lhasa \
	adtools-gcc \
	adtools-sdk