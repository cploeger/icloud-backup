@echo off
REM Dieses Skript lädt mithilfe des Tools icloudpd alle Daten in das aktuelle Verzeichnis herunter.
REM Die Daten werden in Unterordner nach Jahr und Monat abgelegt

REM Hier bitte die eigene E-Mail-Adresse eintragen, die für die Anmeldung in der iCloud genutzt wird.
set EMAIL=bitteandern@example.com

REM Hier muss noch geprüft werden, wie sich das Script verhält falls es mehrere Versionen im Verzeichnis gibt.
REM Es sollte aber die aktuellste Datei genommen werden.
for %%f in (icloudpd-*.exe) do (
    set "dateiname=%%f"
)

%dateiname% --directory . --username %EMAIL% --skip-live-photos --folder-structure {:%%Y/%%m} --set-exif-datetime --log-level info