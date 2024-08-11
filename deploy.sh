#! /usr/bin/env sh

# abort on errors
set -e

./exportNotes.sh

vercel build --prod
vercel --prebuilt --prod
