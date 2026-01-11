FROM docker.n8n.io/n8nio/n8n:latest

USER root

# apk yerine apt-get kullanıyoruz (Debian için)
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

USER node
