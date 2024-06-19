FROM bash:4.0.44

COPY --chmod=755 dir.sh dir.sh

RUN mkdir -p /var/opt/dedalus/userdata/bin && \
    mkdir -p /var/opt/dedalus/userdata/charts && \
    mkdir -p /var/opt/dedalus/userdata/ci && \
    mkdir -p /var/opt/dedalus/userdata/postgres && \
    mkdir -p /var/opt/dedalus/userdata/script && \
    mkdir -p /var/opt/dedalus/userdata/templates && \
    mkdir -p /var/opt/dedalus/userdata/charts/beta/validations && \
    mkdir -p /var/opt/dedalus/userdata/postgres/data/logs

ENTRYPOINT ["bash", "dir.sh"] 
