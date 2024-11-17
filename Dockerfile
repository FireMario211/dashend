FROM rust:1.79.0
WORKDIR /app
COPY . .
RUN cargo build --release

EXPOSE 61475

CMD ["/app/dashend"]
