#!/usr/bin/env bash
# One-shot deploy of every OSS tool registered for FreightForce via ArgoCD.
set -euo pipefail
argocd app sync -l "project=freightforce-tools" --grpc-web
