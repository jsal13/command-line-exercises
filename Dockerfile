FROM python:3.12.0-bookworm

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
    iproute2 \
    jq \
    net-tools \
    netcat-traditional \
    nmap \
    sudo \
    vim \ 
    && apt-get clean && apt-get autoclean

RUN pip install \
    csvkit

# Create the `ada` user, add to sudoers.
RUN useradd \
    # --disabled-password \
    --create-home \
    --home-dir /home/ada \
    --shell /bin/bash ada \
    && adduser ada sudo \
    && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


USER ada
WORKDIR /home/ada