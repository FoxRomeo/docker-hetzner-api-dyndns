# docker-hetzner-api-dyndns
## Docker Container for FarrowStranger/hetzner-api-dyndns
based on alpine with supercronic & jq

## default /etc/cron.d/crontab is set to run dyndns.sh every minute

## set Environment for your needs (will not work without)

```
HETZNER_AUTH_API_TOKEN	925bf046408b55c313740eef2bc18b1e	Your Hetzner API access token
HETZNER_ZONE_NAME	example.com				The zone name
HETZNER_ZONE_ID		DaGaoE6YzDTQHKxrtzfkTx			The zone ID. Use either the zone name or the zone ID. Not both.
HETZNER_RECORD_NAME	dyn					The record name. '@' to set the record for the zone itself.
HETZNER_RECORD_TTL	120					The TTL of the record. Default(60)
HETZNER_RECORD_TYPE	AAAA					The record type. Either A for IPv4 or AAAA for IPv6. Default(A)
```


