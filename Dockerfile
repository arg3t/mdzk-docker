FROM rust:latest

RUN cargo install mdzk

WORKDIR /wiki
CMD mdzk serve
