# reference-ranges-service

reference-ranges-service — domain: lab

- **Port:** 8407
- **Language:** Python 3.11 + Flask
- **Database:** `lab` (Postgres, table `reference_ranges`)
- **Event bus:** Kafka

## API

| Method    | Path                       |
|-----------|----------------------------|
| GET       | `/api/reference_ranges/`          |
| POST      | `/api/reference_ranges/`          |
| GET       | `/api/reference_ranges/<id>`      |
| PUT/PATCH | `/api/reference_ranges/<id>`      |
| DELETE    | `/api/reference_ranges/<id>`      |
| GET       | `/health`                  |
| GET       | `/ready`                   |

## Events

**Publishes:** (none)
**Subscribes:** (none)

## HTTP peer dependencies

- `audit-log-service`

## Local dev

```bash
pip install -e ../../libs/py-healthcare-common
pip install -r requirements.txt
cp .env.example .env
(cd ../../infra && docker compose up -d postgres kafka kafka-init)
python -m app.main
```

## Tests

```bash
pytest
```
