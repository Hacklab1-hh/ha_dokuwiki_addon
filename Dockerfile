# Verwende das Bitnami-Dokuwiki-Image als Basis
FROM bitnami/dokuwiki:latest

# Kopiere das Startskript in das Docker-Image
COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
ENTRYPOINT ["/usr/local/bin/run.sh"]

# Stelle sicher, dass die Volumes definiert sind (optional)
VOLUME [ "/dokuwiki/data", "/opt/bitnami/dokuwiki/conf" ]
