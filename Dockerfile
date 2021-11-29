FROM rust:latest

RUN git clone https://github.com/mdzk-rs/mdzk.git
RUN cd mdzk
RUN cargo build
RUN cp ./target/release/mdzk /bin
RUN cd ..

WORKDIR /wiki
CMD /bin/mdzk serve
