FROM rust:1.80-slim AS builder
WORKDIR /app
COPY Cargo.toml ./
RUN mkdir -p src && echo "fn main(){}" > src/main.rs && cargo build --release && rm -rf src
COPY src ./src
RUN cargo build --release

FROM gcr.io/distroless/cc-debian12:nonroot
WORKDIR /app
COPY --from=builder /app/target/release/iot_gateway /app/app
USER nonroot:nonroot
EXPOSE 50300
ENTRYPOINT ["/app/app"]
