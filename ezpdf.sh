#!/bin/bash
# script to enable pager view of a PDF document.
# Useful for things tools like ranger
pdftotext $1 - -layout | less
