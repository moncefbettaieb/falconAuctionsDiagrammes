# Api Structure Diagram

```mermaid
flowchart TB
    API[API Gateway - FastAPI]
    AUTH[Supabase Auth]
    AU[Auction Service]
    FL[Falcon Service]
    OR[Order Service]
    PY[Payment Service]
    HC[Health Service]
    PR[Product Service]
    API --> AUTH
    API --> AU
    API --> FL
    API --> OR
    OR --> PY
    API --> HC
    API --> PR
```
