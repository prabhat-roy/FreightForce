CREATE KEYSPACE IF NOT EXISTS freightforce_archive
WITH REPLICATION = { 'class': 'NetworkTopologyStrategy', 'dc1': 3 };

CREATE TABLE freightforce_archive.meter_read_archive (
    meter_id   text,
    read_date  date,
    read_time  timestamp,
    kwh        decimal,
    PRIMARY KEY ((meter_id, read_date), read_time)
) WITH CLUSTERING ORDER BY (read_time DESC)
  AND default_time_to_live = 220752000;
