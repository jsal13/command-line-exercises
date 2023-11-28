set shell := ["zsh", "-cu"]

default:
    just --list

up:
    docker compose up -d --build
    docker compose exec main /bin/bash

down:
    docker compose down