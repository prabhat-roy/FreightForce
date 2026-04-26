# edi — EDI X12 / EDIFACT parser and translator

EDI is translated to canonical Kafka events at the boundary; downstream
services are EDI-format-agnostic.

| Service | Lang | Port | Purpose |
|---|---|---|---|
| [edi-parser](edi-parser/) | Rust | 50320 | EDI X12/EDIFACT to canonical events |
| [edi-gateway](edi-gateway/) | Go | 50321 | AS2 / SFTP partner gateway |
| [edi-translator](edi-translator/) | Rust | 50322 | Outbound EDI generation |
