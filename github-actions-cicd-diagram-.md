# CICD Diagram

```mermaid
flowchart TD
    COMMIT[Push_Main] --> CI[Build_And_Tests]
    CI --> SCAN[Security_Scan]
    SCAN --> IMAGE[Docker_Image_Build]
    IMAGE --> DEPLOY[Kubectl_Deploy]
    DEPLOY --> GKE[GKE_Cluster]
```
