FROM rust:latest

RUN cargo install mdzk

CMD mdzk serve /wiki
