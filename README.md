# Kubernetes & GitOps

This directory contains Kubernetes manifests managed via GitOps.

## Structure
- base/      → Shared manifests
- overlays/  → Environment-specific overrides
- argocd-app.yaml → Argo CD application definition

## Deployment Model
- Argo CD watches this folder
- Changes are applied automatically
- Manual kubectl apply is forbidden
