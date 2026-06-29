FILENAME := "Πτυχιακή-Σάντας-Στύλιος.pdf"
SLIDES_FILENAME := "Παρουσίαση-Σάντας-Στύλιος.pdf"

default: compile

compile:
    typst compile --font-path fonts main.typ "{{ FILENAME }}"

watch:
    typst watch --font-path fonts main.typ "{{ FILENAME }}"

python:
    distrobox enter archlinux -- uv run --directory python main.py

slides:
    typst compile slides.typ "{{ SLIDES_FILENAME }}"
