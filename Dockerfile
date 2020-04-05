FROM openjdk:11-jre-slim

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    jq \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -sSLO https://github.com/pinterest/ktlint/releases/download/0.36.0/ktlint \
  && chmod a+x ktlint \
  && mv ktlint /usr/local/bin

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
