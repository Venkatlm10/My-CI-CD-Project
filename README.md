# My CI/CD Project 🚀

## Overview
This repository demonstrates a **Continuous Integration and Continuous Deployment (CI/CD)** pipeline using **Jenkins** and **GitHub** to automate application deployment on **AWS EC2**.  
The project showcases DevOps best practices, including pipeline automation, environment configuration, and cloud deployment.

## Features
- Automated build and deployment pipeline with Jenkins
- Integration with GitHub for version control
- Environment setup using Ubuntu configuration files
- Deployment to AWS EC2 instance
- Scalable design for future containerization and monitoring

## Tools & Technologies
- **Jenkins** – CI/CD pipeline automation  
- **AWS EC2** – Cloud server for deployment  
- **GitHub** – Source code management  
- **Linux (Ubuntu)** – Environment setup and configuration  
- **Bash scripting** – Automation scripts  
- **Docker/Kubernetes (future scope)** – Containerization and orchestration  

## Architecture

The CI/CD pipeline follows a standard DevOps workflow:

1. **Developer Stage**  
   - Code changes are made locally and pushed to GitHub.  
   - GitHub acts as the central version control system.

2. **Continuous Integration (CI) with Jenkins**  
   - Jenkins is triggered via GitHub webhook on every commit/pull request.  
   - Pipeline stages include:
     - **Build** – Compile or prepare the application.  
     - **Test** – Run automated tests to validate code quality.  
     - **Package** – Bundle the application for deployment.  

3. **Continuous Deployment (CD) to AWS EC2**  
   - Jenkins connects securely to the AWS EC2 instance via SSH.  
   - Deployment scripts update the application on the server.  
   - Environment variables are managed via `.bashrc` and `.profile`.

4. **Execution Environment**  
   - The application runs on Ubuntu EC2.  
   - Logs and artifacts are stored for monitoring and troubleshooting.

---

### 📊 Pipeline Flow Diagram
```
+-------------+        +-----------+        +-----------+        +----------------+
| Developer   | -----> | GitHub    | -----> | Jenkins   | -----> | AWS EC2 Server |
+-------------+        +-----------+        +-----------+        +----------------+
       |                     |                   |                      |
       |   Code Commit        |   Webhook        |   Pipeline Build      |   Deployment 
```

## Repository Structure
- `Jenkinsfile` – Defines the CI/CD pipeline stages  
- `.bashrc`, `.profile`, `.ssh` – Environment and user configuration files  
- `/Ubuntu` – OS‑level setup scripts and configs  
- `/docs` – Documentation and guides (to be expanded)  

## Setup Instructions
1. **Clone the repository:**
   ```bash
   git clone https://github.com/Venkatlm10/My-CI-CD-Project.git
   cd My-CI-CD-Project
