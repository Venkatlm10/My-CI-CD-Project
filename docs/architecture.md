# Architecture
#This document explains the CI/CD pipeline flow for our project.

## Flow Overview
**Developer → GitHub → Jenkins → AWS EC2 → Nginx Application**

## Diagram
```
+-------------+        +-----------+        +-----------+        +----------------+        +------------------+
| Developer   | -----> | GitHub    | -----> | Jenkins   | -----> | AWS EC2 Server | -----> | Nginx Application |
+-------------+        +-----------+        +-----------+        +----------------+        +------------------+
       |                     |                   |                      |                          |
       |   Code Commit        |   Webhook        |   Pipeline Build      |   Deployment            |   Serving Web App
