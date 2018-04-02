#!/bin/bash

pandoc -t beamer $1.md -V theme:metropolis -o $1.pdf
