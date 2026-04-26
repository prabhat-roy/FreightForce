# iot — IoT ingestion, telemetry, geolocation

| Service | Lang | Port | Purpose |
|---|---|---|---|
| [iot-gateway](iot-gateway/) | Rust | 50300 | MQTT/AWS IoT Core ingress |
| [telemetry-service](telemetry-service/) | Go | 50301 | Telemetry ingest to TimescaleDB |
| [geolocation-service](geolocation-service/) | Go | 50302 | GPS positions, geofence eval |
| [sensor-aggregator](sensor-aggregator/) | Go | 50303 | Sensor fusion (GPS+temp+RFID) |
