config-server
=============

Spring Cloud Config Server (JDBC Backend) with Spring Cloud Bus
---------------------------------------------------------------

### Prerequisites

- Docker
- Docker Compose
- PostgreSQL client (psql)
- HTTP client (curl)
- JSON processor (jq)

### Get Started

1. Start PostgreSQL and Kafka
> `docker-compose up -d`

2. Create table and Insert initial configuration into PostgreSQL (The password is in docker-compose.yml)
> `psql -h localhost -d postgres -U postgres -W -f initial-data.sql`

3. Run config-server
> `./gradlew BootRun`

4. Try to get the configuration and parse it with jq
> `curl -s http://localhost:8888/application/default/master | jq .`

### Other tasks

- Update the configuration
> `psql -h localhost -d postgres -U postgres -W -f updated-data.sql`

- Get error-phrases configuration
> `curl -s http://localhost:8888/application/error-phrases/master | jq .`

- Refresh the Spring Cloud Bus
> `curl -sX POST http://localhost:8888/actuator/busrefresh`

- Stop PostgreSQL and Kafka
> `docker-compose down -v`
