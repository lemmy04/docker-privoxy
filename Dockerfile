FROM opensuse/leap:latest

MAINTAINER lemmy04 <Mathias.Homann@openSUSE.org>

RUN zypper install -y -l privoxy

LABEL version=3.0.28 Description="For running privoxy in a container but using the host privoxy config (see README)"

EXPOSE 8118

ENTRYPOINT [ '/usr/sbin/privoxy' ]
CMD [ "/usr/sbin/privoxy","--chroot","--pidfile","/run/privoxy.pid","--user","privoxy", "/etc/config"]

