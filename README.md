# docker-hetzner-api-dyndns
<a href="https://hub.docker.com/r/intrepidde/arm32v6-hetzner-api-dyndns"><img src="https://img.shields.io/docker/pulls/intrepidde/arm32v6-hetzner-api-dyndns.svg?style=plastic&logo=appveyor" alt="Docker pulls arm32v6"/></a> 
<a href="https://hub.docker.com/r/intrepidde/arm64v8-hetzner-api-dyndns"><img src="https://img.shields.io/docker/pulls/intrepidde/arm64v8-hetzner-api-dyndns.svg?style=plastic&logo=appveyor" alt="Docker pulls arm32v8"/></a> 
<a href="https://hub.docker.com/r/intrepidde/x86-hetzner-api-dyndns"><img src="https://img.shields.io/docker/pulls/intrepidde/x86-hetzner-api-dyndns.svg?style=plastic&logo=appveyor" alt="Docker pulls x86"/></a><br>
__Raspberry Pi (RPi) Docker container with <a href="https://github.com/FoxRomeo/hetzner-api-dyndns">FoxRomeo/hetzner-api-dyndns</a>__  
based on FarrowStranger/hetzner-api-dyndns  
(arm32v6 aka RPi A/B/B+ and later, arm64v8 and x86/amd64)  
build with alpine, supercronic, jq

default /etc/cron.d/crontab is set to run dyndns.sh 5 minutes

Using Hetzner Console-API  
** The old API will be _discontinued_ My 2026 **  
Branch main will is now  new-API only. Use can use old-api branch but remember you have a deadline.  
When migrating to Console-API, remember you need to generate a new Token.

### set Environment for your needs (will not work without)

```
HETZNER_AUTH_API_TOKEN | 925bf046408b55c313740eef2bc18b1e | Your Hetzner Console-API access token
HETZNER_ZONE_NAME | example.com | The zone name
HETZNER_ZONE_ID	 | DaGaoE6YzDTQHKxrtzfkTx | The zone ID. Use either the zone name or the zone ID. Not both.
HETZNER_RECORD_NAME | dyn | The record name. '@' to set the record for the zone itself.
HETZNER_RECORD_TTL | 120 | The TTL of the record. Default(60)
HETZNER_RECORD_TYPE | AAAA | The record type. Either A for IPv4 or AAAA for IPv6. Default(A)
```


