FROM rust:latest

RUN git clone https://github.com/mdzk-rs/mdzk.git
RUN cd mdzk && cargo build --release && cd /
RUN cp ./mdzk/target/release/mdzk /bin
RUN git clone https://github.com/theFr1nge/mdbook-mermaid.git
RUN cd mdbook-mermaid && cargo build --release && cd /
RUN cp ./mdbook-mermaid/target/release/mdbook-mermaid /bin

WORKDIR /wiki
CMD /bin/mdzk serve
