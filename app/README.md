# Application Overview

This is a simple Node.js web application used to demonstrate
containerization, CI pipelines, and GitOps deployment.

## Responsibilities
- Produce a Docker image
- Remain stateless
- Be deployable via Kubernetes

# ==================
# Run Locally
# ==================

```bash
npm install
npm start

# ==================
# Run with Docker.
# ==================

```bash
docker build -t app:test .
docker run -p 3000:3000 app:test

