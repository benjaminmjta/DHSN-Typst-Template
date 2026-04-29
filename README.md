# Typst Vorlage für wissenschaftliche Arbeiten an der DHSN

Dieses Projekt stellt eine Vorlage für wissenschaftliche Arbeiten mit [Typst](https://typst.app/) an der dualen Hochschule Sachsen dar. Es ist insbesondere für Arbeiten im Bereich IT geeignet und basiert auf der Formatierung der LaTeX-Vorlage von Prof. Dr.-Ing. Tenshi Hara sowie teilweise den formalen Vorgaben des DHSN-Leitfadens. Als Zitierstil wird standardmäßtig ieee verwendet. Das sollte man mit seinen Betreuern absprechen!
Andernfalls kann man den Zitierstil auch ändern siehe: [Typst - Bibliography](https://typst.app/docs/reference/model/bibliography/).

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

## ⚠️ Wichtiges

Pro Kapitel & Anhang muss am Anfang der Datei.typ folgendes stehen.

```typst
#import "../_style.typ": *
#show: main
```

Damit überschreibt die kapitel-/anhangspezifische Formatierung die globale.
Pro Kapitel nur einen level 1 Titel benutzen (= Titel) -> dieser wird automatisch mit "Kapitel #KapitelNr" davor formatiert (siehe bereits angelegte Kapitel).

## 📚 Dokumentation & Pakete

- [Typst-Dokumentation](https://typst.app/docs/)
- [Verwendung Bibliography](https://typst.app/docs/reference/model/bibliography/)
- [Verwendung Glossar](https://typst.app/universe/package/glossarium/)
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
