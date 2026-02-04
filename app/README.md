# GitOps Demo Application

This is a minimal Node.js application used to demonstrate
a production-style GitOps Kubernetes deployment on AWS.

## Run Locally
```bash
npm install
npm start

## Run with Docker
```bash
docker build -t gitops-app .
docker run -p 3000:3000 gitops-app

