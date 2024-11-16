FROM rust:1.79.0 AS builder
WORKDIR /app
COPY . .
RUN cargo build --release

FROM debian:buster-slim

WORKDIR /app

COPY --from=builder /app/target/release/dashend /app/dashend

EXPOSE 61475

CMD ["/app/dashend"]
