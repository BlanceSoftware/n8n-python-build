# ÖNEMLİ DEĞİŞİKLİK: 'latest' yerine 'debian' sürümünü kullanıyoruz.
# Bu sürümde apt-get kesinlikle yüklüdür.
FROM docker.n8n.io/n8nio/n8n:debian

USER root

# Debian paket yöneticisi ile Python'u kuruyoruz
RUN apt-get update && \
    apt-get install -y python3 python3-pip --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

USER node
