FROM <<BASECONTAINER>>

LABEL description="Docker container with a supercronic, jq for Hetzner-API dyndns.sh" \
      maintainer="intrepidde" \
      organization="https://github.com/FoxRomeo"


USER root
RUN passwd -l root ; \
    apk add --update --no-cache bind-tools git && \
    cd / && \
    git clone --depth 1 https://github.com/FoxRomeo/hetzner-api-dyndns.git && \
    echo "*/5 * * * *  /hetzner-api-dyndns/dyndns.sh" > /etc/cron.d/crontab && \
    apk del --no-cache git


# -v <path_to_your>/crontab:/etc/cron.d/crontab:ro
# file must be readable by user cron (uid 16)

# look at https://github.com/FoxRomeo/hetzner-api-dyndns
# for the required ENV variables

ENV HETZNER_RECORD_TTL=120

USER cron
CMD ["/usr/local/bin/supercronic", "/etc/cron.d/crontab"]
