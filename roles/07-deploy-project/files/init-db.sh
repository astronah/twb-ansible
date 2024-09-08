#!/bin/bash
set -e

clickhouse client -n <<-EOSQL
    CREATE TABLE logs
    (
        id UInt32,
        account_id UInt32,
        action String,
        created_at DateTime,
        details String,
        groupe_id UInt32,
        followed_id UInt32
    ) ENGINE = MergeTree()
        ORDER BY (account_id, created_at)
        PARTITION BY toYYYYMMDD(created_at)
        SETTINGS index_granularity = 8192;
EOSQL
