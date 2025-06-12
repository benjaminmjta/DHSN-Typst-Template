# Thesis & Belegarbeit Vorlage für Typst

Dieses Projekt stellt eine Vorlage für Abschlussarbeiten und Belegarbeiten mit [Typst](https://typst.app/) an der dualen Hochschule Sachsen dar. Es ist insbesondere für Arbeiten im Bereich IT geeignet und basiert auf der Formatierung der LaTeX-Vorlage von Prof. Dr.-Ing. Tenshi Hara sowie den formalen Vorgaben des DHSN-Leitfadens für soziale Arbeit (speziell für IT gibts keine ¯\_(ツ)_/¯).

## 📄 Hauptdatei

Die zentrale Datei ist:

```
thesis.typ
```

Diese Datei führt das gesamte Dokument zusammen. Beim Start des Arbeitens einfach den Watch-Modus von Typst verwenden:

```bash
typst watch thesis.typ
```

Ansonsten kompilieren mit:

```bash
typst compile thesis.typ
```

## 📁 Struktur

- `_setup.typ`: Enthält alle Variablen. -> muss pro Datei neu eingebunden werden.
- `_style.typ`: Definiert das gesamte Styling (z. B. Schriftarten, Abstände) ab Titelblatt.
- `_functions.typ`: Beinhaltet eigene Funktionen, Elemente und eingebundene Pakete.
- `thesis.typ`: Hauptdatei, beinhaltet die gesamtstruktur, wird zum Kompilieren verwendet.
- `tocfiles/*`: Beinhaltet Verzeichnisse inkl. Inhaltsverzeichnis.
- `chapters/*`: Beinhaltet alle Kapitel.
- alles andere sollte logisch sein

## 📚 Dokumentation & Pakete

- [Typst-Dokumentation](https://typst.app/docs/)
- [Typst-Pakete](https://typst.app/docs/packages/)

## 📘 Quellen der Vorlage

Diese Vorlage basiert auf:

- LaTeX-Vorlage von Prof. Dr.-Ing. Tenshi Hara  
  👉 [GitHub-Repo](https://github.com/tchara/StADD-Thesis)
- Leitfaden der DHSN Soziale Arbeit  
  👉 [DHSN-Website](https://www.dhsn.de/fileadmin/mediamanager/001_duale_hochschule/016_studienangebot/breitenbrunn/soziale_arbeit/dokumente/DHSN_BB_Leitfaden_fuer_das_wissenschaftliche_Arbeiten_Studiengang_Soziale_Arbeit_ab_10_2024.pdf)

> Für IT-Studiengänge gibt es keinen eigenen Leitfaden – diese Vorlage sollte ausreichen.

## 📄 Lizenz

Dieses Projekt steht unter der **GNU General Public License v3.0**.  
Details findest du in der Datei [`LICENSE.txt`](./LICENSE.txt).
