set shell := ["zsh", "-cu"]

default:
    just --list

up:
    docker compose up -d
    docker compose exec main /bin/bash

down:
    docker compose down