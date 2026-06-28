FILENAME := "Πτυχιακή-Σάντας-Στύλιος.pdf"

default: compile

compile:
    typst compile --font-path fonts main.typ "{{ FILENAME }}"

watch:
    typst watch --font-path fonts main.typ "{{ FILENAME }}"

python:
    distrobox enter archlinux -- uv run --directory python main.py
