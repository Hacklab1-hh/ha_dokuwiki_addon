#!/usr/bin/env bash

# Setze Konfigurationswerte für Dokuwiki
export DOKUWIKI_PORT=${port}
export DOKUWIKI_ADMIN_USER="${admin_user}"
export DOKUWIKI_ADMIN_PASSWORD="${admin_password}"
export DOKUWIKI_NAME="${wiki_name}"
export DOKUWIKI_LICENSE="${wiki_license}"
export DOKUWIKI_LANGUAGE="${wiki_language}"
export DOKUWIKI_TIMEZONE="${wiki_timezone}"
export DOKUWIKI_BASE_URL="${base_url}"
export SMTP_SERVER="${smtp_server}"
export SMTP_PORT="${smtp_port}"
export SMTP_USER="${smtp_user}"
export SMTP_PASSWORD="${smtp_password}"

# Starte Dokuwiki mit den konfigurierten Werten
echo "Starting Dokuwiki with the following settings:"
echo "Port: ${DOKUWIKI_PORT}, Admin: ${DOKUWIKI_ADMIN_USER}, Wiki Name: ${DOKUWIKI_NAME}"

# Lösche install.php zur Sicherstellung der Sicherheit nach dem Start
exec /opt/bitnami/scripts/dokuwiki/run.sh
if [ -f /opt/bitnami/dokuwiki/install.php ]; then
  rm /opt/bitnami/dokuwiki/install.php
  echo "install.php gelöscht zur Sicherstellung der Sicherheit."
fi
