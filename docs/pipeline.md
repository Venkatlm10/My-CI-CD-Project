## Pipeline Explanation

Our CI/CD pipeline ensures that code changes move smoothly from development to production with minimal manual effort. Below are the key stages:

### 1. Code Commit
- Developers push code changes to the GitHub repository.
- Each commit triggers a webhook to Jenkins.

### 2. Build & Test
- Jenkins pulls the latest code and runs a Maven build.
- Unit tests and quality checks (e.g., SonarQube) are executed to validate the code.

### 3. Dockerize
- Jenkins builds a Docker image of the application.
- The image includes Nginx as the web server to serve static content and proxy application traffic.
- The image is tagged and pushed to Docker Hub.

### 4. Deploy
- AWS EC2 instance pulls the latest Docker image.
- Any existing container is stopped and replaced with the new one.
- The container runs Nginx, serving the updated application.

### 5. Serve & Monitor
- Nginx exposes the application on port 80 (or configured port).
- Users can access the deployed application via the EC2 public IP or domain.
- Monitoring tools (CloudWatch, Prometheus/Grafana) track performance and availability.

---

This pipeline ensures:
- **Automation** of build, test, and deployment steps.  
- **Consistency** by packaging the app with Nginx in Docker.  
- **Scalability** through AWS EC2 hosting.  
- **Reliability** with monitoring and quick rollback options.
