# Api Structure Diagram

```mermaid
flowchart TB
METRICS[App Metrics] --> Grafana
LOGS[Logs Services] --> Loki
ALERTS[Alert Policies] --> PagerDuty
Grafana --> Dashboard[Service & API Latency]
```
