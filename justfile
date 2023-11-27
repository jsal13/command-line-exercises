set shell := ["zsh", "-cu"]

default:
    just --list

build:
    docker build -t cle ./docker

run:
    docker run -it cle /bin/bash
