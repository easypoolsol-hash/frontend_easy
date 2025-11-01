#!/bin/bash
# Setup Workload Identity Federation for GitHub Actions → Firebase Deployment
# Project: easypool-30af3 (725567398741)
# Repository: manishasaraf12-coder/frontend_easy

set -e

PROJECT_ID="easypool-30af3"
PROJECT_NUMBER="725567398741"
POOL_NAME="github-actions-pool"
PROVIDER_NAME="github-provider"
REPO="manishasaraf12-coder/frontend_easy"
SERVICE_ACCOUNT="firebase-deployer@${PROJECT_ID}.iam.gserviceaccount.com"

echo "🔧 Setting up Workload Identity Federation for Firebase deployment"
echo "Project: ${PROJECT_ID}"
echo "Repository: ${REPO}"
echo ""

# Check if workload identity pool already exists
if gcloud iam workload-identity-pools describe "${POOL_NAME}" \
    --project="${PROJECT_ID}" \
    --location="global" &>/dev/null; then
    echo "✅ Workload Identity Pool '${POOL_NAME}' already exists"
else
    echo "📦 Creating Workload Identity Pool..."
    gcloud iam workload-identity-pools create "${POOL_NAME}" \
        --project="${PROJECT_ID}" \
        --location="global" \
        --display-name="GitHub Actions Pool"
    echo "✅ Workload Identity Pool created"
fi

# Check if provider already exists
if gcloud iam workload-identity-pools providers describe "${PROVIDER_NAME}" \
    --project="${PROJECT_ID}" \
    --location="global" \
    --workload-identity-pool="${POOL_NAME}" &>/dev/null; then
    echo "✅ Provider '${PROVIDER_NAME}' already exists"
else
    echo "🔗 Creating GitHub OIDC Provider..."
    gcloud iam workload-identity-pools providers create-oidc "${PROVIDER_NAME}" \
        --project="${PROJECT_ID}" \
        --location="global" \
        --workload-identity-pool="${POOL_NAME}" \
        --display-name="GitHub Provider" \
        --attribute-mapping="google.subject=assertion.sub,attribute.actor=assertion.actor,attribute.repository=assertion.repository,attribute.repository_owner=assertion.repository_owner" \
        --issuer-uri="https://token.actions.githubusercontent.com"
    echo "✅ Provider created"
fi

# Check if service account exists, if not create it
if gcloud iam service-accounts describe "${SERVICE_ACCOUNT}" \
    --project="${PROJECT_ID}" &>/dev/null; then
    echo "✅ Service Account '${SERVICE_ACCOUNT}' already exists"
else
    echo "👤 Creating Service Account..."
    gcloud iam service-accounts create "firebase-deployer" \
        --project="${PROJECT_ID}" \
        --display-name="Firebase Deployer" \
        --description="Service account for GitHub Actions to deploy to Firebase Hosting"
    echo "✅ Service Account created"
fi

# Grant Firebase Admin role to service account (needed for hosting deployments)
echo "🔐 Granting Firebase Admin role to service account..."
gcloud projects add-iam-policy-binding "${PROJECT_ID}" \
    --member="serviceAccount:${SERVICE_ACCOUNT}" \
    --role="roles/firebase.admin" \
    --condition=None

# Grant workload identity user role
echo "🔐 Granting Workload Identity User permissions..."
gcloud iam service-accounts add-iam-policy-binding "${SERVICE_ACCOUNT}" \
    --project="${PROJECT_ID}" \
    --role="roles/iam.workloadIdentityUser" \
    --member="principalSet://iam.googleapis.com/projects/${PROJECT_NUMBER}/locations/global/workloadIdentityPools/${POOL_NAME}/attribute.repository/${REPO}"

echo ""
echo "✅ Setup complete!"
echo ""
echo "📋 Copy these values to your GitHub workflow:"
echo "---"
echo "workload_identity_provider: 'projects/${PROJECT_NUMBER}/locations/global/workloadIdentityPools/${POOL_NAME}/providers/${PROVIDER_NAME}'"
echo "service_account: '${SERVICE_ACCOUNT}'"
echo "---"
echo ""
echo "🔒 No secrets needed! Workload Identity uses short-lived OIDC tokens."
