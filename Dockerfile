FROM certbot/certbot:latest
MAINTAINER vdhpieter <vdhpieter@outlook.com>

RUN apk update && apk add docker bash coreutils grep

ADD start.sh /bin/start.sh

ENTRYPOINT [ "/bin/bash", "/bin/start.sh" ]
