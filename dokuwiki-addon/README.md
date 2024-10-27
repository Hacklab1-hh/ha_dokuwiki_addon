# ha_dokuwiki_addon
an Addon for Homeassistant wich use Bitname Dokuwiki in a docker container

# Dokuwiki Add-on für Home Assistant

Dieses Add-on integriert Dokuwiki in Home Assistant und erlaubt flexible Konfigurationsmöglichkeiten über die Home Assistant-GUI.

## Funktionen

- Vollständig in die Home Assistant-Seitenleiste integrierbar
- Konfigurierbare Optionen für Administrator-Login, Lizenz, Wiki-Name und andere Einstellungen
- Sicherheitsfeatures wie das Entfernen der `install.php` nach der Installation

## Installation

1. Fügen Sie dieses Repository zu Home Assistant unter **Supervisor > Add-on Store** hinzu.
2. Installieren Sie das Dokuwiki Add-on und konfigurieren Sie die gewünschten Optionen.

## Konfigurationsoptionen

- **Port**: Der Port, auf dem Dokuwiki läuft.
- **Admin-Benutzer** und **Passwort**: Initiale Anmeldedaten.
- **Wiki-Name**, **Lizenz**, **Sprache**, **Zeitzone**: Basisinformationen für das Wiki.
- **SMTP-Server**: SMTP-Konfiguration für Benachrichtigungen.
