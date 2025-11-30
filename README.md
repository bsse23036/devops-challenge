# DevOps Challenge: Static Web App CI/CD

## Project Goal
This project was developed to meet the integrated DevOps Challenge requirements, focusing on containerization, multi-service architecture, orchestration via Kubernetes, and establishing a complete Continuous Integration/Continuous Deployment (CI/CD) pipeline using Jenkins.

The objective was to containerize a static web application, deploy it to a Kubernetes cluster, and automate updates based on Git commits.


## Architecture Overview

The application utilizes a multi-service architecture  and is orchestrated for scalable deployment via Kubernetes.

| Component | Role | Technology |
| :--- | :--- | :--- |
| **Frontend** | Serves the static HTML/CSS content. | Nginx (via custom Dockerfile) |
| **Database** | Satisfies the multi-service architecture requirement. | Redis (Alpine) |
| **Orchestration** | Manages scaling, networking, and deployment. | Kubernetes (K8s) |
| **CI/CD Tool** | Automates the build, push, and deployment process. | Jenkins |


## File Structure

### Repository Structure
```
devops-challenge/
├── app/                  # Contains the static HTML/CSS/JS files
├── kubernetes/           # K8s Deployment and Service manifests
│   ├── deployment.yaml
│   └── service.yaml
├── Dockerfile            # Containerization of the Nginx web app
├── docker-compose.yml    # Multi-service definition (Frontend + Redis)
├── Jenkinsfile           # Declarative CI/CD pipeline script
└── README.md
```

## Key Technologies

| Component | Implementation File | Purpose |
| :--- | :--- | :--- |
| **Dockerfile** | Dockerfile | Builds the mustafa333500/my-web-app:latest image |
| **Docker Compose** | docker-compose.yaml | Defines frontend and backend services for testing |
| **K8** | deployment.yaml & service.yaml | Defines the scalable deployment and NodePort access for the app |
| **Jenkins** | Jenkinsfile | Automates the entire CI/CD process from commit to deployment restart |