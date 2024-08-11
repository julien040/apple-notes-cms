#! /usr/bin/env sh

# This script exports all notes from the Notes app to a JSON file.
FOLDER="TIL"
FILE_NAME="notes.json"

anyquery -q "SELECT clear_plugin_cache('notes');"
anyquery -q "SELECT name, html_body,modification_date FROM notes_items WHERE folder = '$FOLDER';" --json >$FILE_NAME
