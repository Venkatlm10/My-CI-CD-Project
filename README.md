# 🚀 CI/CD Pipeline with Jenkins, GitHub, AWS EC2, Maven, Docker & Nginx (Containerized)

## Overview
This repository demonstrates a **Continuous Integration and Continuous Deployment (CI/CD)** pipeline using **Jenkins** and **GitHub** to automate application deployment on **AWS EC2**.  

The project showcases DevOps best practices, including pipeline automation, environment configuration, and cloud deployment.

This project demonstrates a **complete CI/CD pipeline** using:
- **Git & GitHub** → Version control and source code management
- **Jenkins** → Automation and pipeline orchestration (on port `8080`)
- **Maven** → Build tool for Java applications
- **Docker** → Containerization
- **Nginx** → Running inside a Docker container (on port `9090`)
- **AWS EC2 (Elastic IP)** → Hosting both Jenkins and Dockerized Nginx

---

## 📖 Overview

The goal of this pipeline is to:
1. **Pull code** from GitHub whenever changes are pushed.
2. **Build the project** using Maven.
3. **Create a Docker image** containing the app and Nginx.
4. **Deploy the container** on AWS EC2.
5. **Serve the app** at EC2’s Elastic IP on port `9090`.

This ensures **automation, reproducibility, and easy deployment**.

---

## 🛠️ Tools & Technologies

- **Git/GitHub** → Source code management  
- **Jenkins** → CI/CD automation  
- **Maven** → Build tool for Java projects  
- **Docker** → Containerization  
- **Nginx (inside Docker)** → Web server  
- **AWS EC2** → Cloud infrastructure with Elastic IP  

---

## ⚙️ Setup Steps

### 1. Git & GitHub
- Initialize your repo with `git init`
- Push code to GitHub:  
  ```
  git remote add origin <repo-url>
  git push -u origin main

### 2. AWS EC2
- Launch an **EC2 instance** (Free Tier friendly).
- Assign an **Elastic IP** for stable access.
- Install required packages:  
  ```
  sudo apt update
  sudo apt install docker.io openjdk-11-jdk maven -y

### 3. Jenkins
- Install Jenkins on your EC2 instance.
- Start Jenkins service:
  ```
  sudo systemctl enable jenkins
  sudo systemctl start jenkins
### 4. Docker & Nginx (Containerized)

In this step, we package the application together with **Nginx** inside a Docker container.  
This ensures portability, reproducibility, and makes deployment on AWS EC2 very simple.

#### 🐳 Build Docker Image
- Create a `Dockerfile` that installs Nginx and copies your application files.
- Example `Dockerfile`:
  ```dockerfile
  FROM nginx:latest
  COPY ./dist /usr/share/nginx/html
  EXPOSE 9090
  CMD ["nginx", "-g", "daemon off;"]
  ----------------------------------

### 📊 Pipeline Diagram
```
          ┌────────────┐
          │   GitHub   │
          │  (Source)  │
          └─────┬──────┘
                │
                ▼
          ┌────────────┐
          │  Jenkins   │
          │ (Pipeline) │
          └─────┬──────┘
                │
        ┌───────┼────────┐
        ▼       ▼        ▼
   ┌────────┐ ┌────────┐ ┌──────────────┐
   │ Maven  │ │ Docker │ │ Nginx inside │
   │ Build  │ │ Image  │ │ Container    │
   └────────┘ └────────┘ └─────┬────────┘
                                │
                                ▼
                        ┌────────────┐
                        │ AWS EC2    │
                        │ Elastic IP │
                        └────────────┘
  ```

### 🌐 Accessing the App
  ```
  http://13.200.169.238:9090/
  ```

### 🎯 Benefits
- ✅ Fully automated pipeline
- ✅ Easy deployment on AWS
- ✅ Dockerized Nginx for portability
- ✅ Clear documentation for onboarding

### 🔽 Clone the Repository

To get started, clone this repository onto your local machine or AWS EC2 instance.

#### Using HTTPS
```
git clone https://github.com/Venkatlm10/My-CI-CD-Project.git
```
