# docker-privoxy
Running privoxy as configured in openSUSE, but as a docker container

Run this container like so:

docker run -d --restart unless-stopped --name privoxy -p 8118:8118 -v /var/lib/privoxy/etc:/var/lib/privoxy/etc lemmy04/docker-privoxy

That way you can configure the privoxy instance inside the container the "normal" way by editing the files in /etc/privoxy.

