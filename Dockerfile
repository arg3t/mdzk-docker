FROM rust:latest

RUN git clone https://github.com/mdzk-rs/mdzk.git
RUN cd mdzk && cargo build --release && cd /
RUN cargo install mdbook-mermaid
RUN cp ./mdzk/target/release/mdzk /bin

WORKDIR /wiki
CMD /bin/mdzk serve
