#!/usr/bin/env bash
set -euo pipefail

ORG="acme-corp"
REPO="https://github.com/cgdent-demo/terraform-cloud-demo"

AWS_WORKSPACE="acme-webapp-dev"
AZURE_WORKSPACE="acme-azure-demo"

echo "Creating TFC workspace: $AWS_WORKSPACE"
tfc workspace create --organization "$ORG" --name "$AWS_WORKSPACE" --vcs-repo "$REPO" || true

echo "Creating TFC workspace: $AZURE_WORKSPACE"
tfc workspace create --organization "$ORG" --name "$AZURE_WORKSPACE" --vcs-repo "$REPO" --working-directory "azure" || true

echo "Done. Attach variable sets and policies manually or extend script."
