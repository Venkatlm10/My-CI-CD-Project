# Architecture\n\nThis document explains the CI/CD pipeline flow.
# Architecture
Developer → GitHub → Jenkins → AWS EC2 → Deployed Application

```
+-------------+        +-----------+        +-----------+        +----------------+
| Developer   | -----> | GitHub    | -----> | Jenkins   | -----> | AWS EC2 Server |
+-------------+        +-----------+        +-----------+        +----------------+
       |                     |                   |                      |
       |   Code Commit        |   Webhook        |   Pipeline Build      |   Deployment
