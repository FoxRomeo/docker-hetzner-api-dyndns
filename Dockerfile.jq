FROM <<BASECONTAINER>>
MAINTAINER docker@intrepid.de

USER root
RUN passwd -l root ; \
    apk add --update --no-cache bind-tools && \
    cd / && \
    git clone --depth 1 https://github.com/FarrowStrange/hetzner-api-dyndns.git && \
    echo "*/5 * * * *  /hetzner-api-dyndns/dyndns.sh" > /etc/cron.d/crontab

# -v <path_to_your>/crontab:/etc/cron.d/crontab:ro
# file must be readable by user cron (uid 16)

# look at https://github.com/FarrowStrange/hetzner-api-dyndns
# for the required ENV variables

USER cron
CMD ["/usr/local/bin/supercronic", "/etc/cron.d/crontab"]
