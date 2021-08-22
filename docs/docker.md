# Docker setup

This doc covers how to configure and run amcrest2mqtt on docker.

### Config

Below are the configuration options set via Environment variables:

| Environment Variable | Description | Default |
|---|---|---|
| AMCREST_HOST | Hostname or IP Address of the Amcrest camera | `null` |
| AMCREST_PORT | Port number of the Amcrest camera | `80` |
| AMCREST_USERNAME | Username to use when accessing the Amcrest camera | `admin` |
| AMCREST_PASSWORD | Password to use when accessing the Amcrest camera | `null` |
| STORAGE_POLL_INTERVAL | How often (in seconds to poll the camera for Storage metrics | `3600` |
| MQTT_HOST | Hostname or IP Address of the MQTT server | `localhost` |
| MQTT_PORT | Port number to use when accessing the MQTT server | `1883` |
| MQTT_USERNAME | Username to use when accessing the MQTT server | `null` |
| MQTT_PASSWORD | (Optional) Password to use when accessing the MQTT server | `null` |
| MQTT_QOS | MQTT Quality of Service level [docs](https://www.emqx.com/en/blog/introduction-to-mqtt-qos) | 0 |
| MQTT_TLS_ENABLED | Set to `true` to enable TLS auth | `false` |
| MQTT_TLS_CA_CERT | Path to the TLS CA Cert | `null` |
| MQTT_TLS_CERT | Path to the private Cert | `null` |
| MQTT_TLS_KEY | Path to teh private Key | `null` |
| HOME_ASSISTANT | Set to true to enable Home Assitant integrations | `false` |
| HOME_ASSISTANT_PREFIX | Topic prefix to use when sending events to MQTT | `homeassistant` |

# Run

amcrest2mqtt is designed to run as a service therefor it is best to use docker-compose. Example:

```yaml
version: "3"
services:
  amcrest2mqtt:
    container_name: amcrest2mqtt
    image: maxirus/amcrest2mqtt:latest
    restart: unless-stopped
    environment:
      AMCREST_HOST: 192.168.1.10
      AMCREST_PASSWORD: password
      MQTT_HOST: localhost
      MQTT_USERNAME: admin
      MQTT_PASSWORD: password
      HOME_ASSISTANT: "true"
```
