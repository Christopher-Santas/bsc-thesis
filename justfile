FILENAME := "Πτυχιακή-Σάντας-Στύλιος"
SLIDES_FILENAME := "Παρουσίαση-Σάντας-Στύλιος"

default: compile

compile:
    typst compile --font-path fonts main.typ "{{ FILENAME }}.pdf"

watch:
    typst watch --font-path fonts main.typ "{{ FILENAME }}.pdf"

python:
    distrobox enter archlinux -- uv run --directory python main.py

slides:
    typst compile slides.typ "{{ SLIDES_FILENAME }}.pdf"

slides-handout:
    typst compile slides.typ "{{ SLIDES_FILENAME }}-handout.pdf" --input handout=true

slides-notes:
    typst compile slides.typ "{{ SLIDES_FILENAME }}-notes.pdf" --input notes=true

slides-touying:
    touying compile slides.typ

all: compile slides slides-handout slides-notes slides-touying
