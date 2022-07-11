# Schnellstart

Für deutsche Arbeiten in `thesis_name.tex` Dokumentenklasse zu `\documentclass[german]{cukthesis}` ändern.

In `config/config.tex` folgendes eintragen:
* Titel
* Autor
* Abschlussart
* Zweitgutachter

Ändern Sie den Dateinamen von `thesis_name.tex` so, dass er Ihre Arbeit eindeutig identifiziert (bitte keine Umlaute oder Leerzeichen).
Komplieren Sie das eben umbenannte Hauptfile mit pdflatex oder latexmk.

# Quick Start

In `config/config.tex` you will want to enter:
* Title
* Author
* Degree
* Second Examiner

Change the filename of `thesis_name.tex` in a way that uniquely identifies your thesis (no mutated vowels or whitespace characters).
Compile the renamed main file with pdflatex or latexmk.

# Format

Die folgenden Theorem Umgebungen stehen standardmäßig zur Verfügung:
The following theorem environments are available by default:
* definition
* lemma
* proposition
* theorem
* corollary
* example
* claim
* remark
* problem
* observation

Im deutschen werden sowohl theorem als auch proposition als **Satz** gestyled.
