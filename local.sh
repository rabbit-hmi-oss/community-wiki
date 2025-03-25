#!/bin/bash


if [ ! -r .venv ]; then
    python3 -m venv .venv
    source .venv/bin/activate
    pip install mkdocs-material
else
    source .venv/bin/activate
fi

if ! gem list -i yalphabetize > /dev/null 2>&1; then
    gem install yalphabetize
fi

yalphabetize _data/devices/* -a

rm -rf docs/devices/
python33 scripts/generate_device_markdown.py

mkdocs build --site-dir public
mkdocs serve
