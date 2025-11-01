# Workload Identity Federation Setup for Firebase Deployment

This workflow uses **Workload Identity Federation** instead of storing service account keys. This is Google's recommended secure approach.

## Benefits

- **No stored secrets** - GitHub generates short-lived OIDC tokens
- **Auto-rotating credentials** - New token on every run (~10 min validity)
- **Better security** - Same approach used in backend deployments
- **Audit trail** - Track exactly who deployed what

## One-Time Setup Required

Before the CI/CD pipeline can deploy, you need to run the setup script once to configure Google Cloud:

### Step 1: Run the Setup Script

```bash
cd .github/scripts
chmod +x setup-workload-identity.sh
./setup-workload-identity.sh
```

This script will:
1. Create/verify the Workload Identity Pool (`github-actions-pool`)
2. Create/verify the GitHub OIDC Provider (`github-provider`)
3. Create/verify the service account (`firebase-deployer@easypool-30af3.iam.gserviceaccount.com`)
4. Grant necessary permissions (Firebase Admin, Workload Identity User)

### Step 2: Verify Configuration

The setup script will output the configuration values. Verify they match what's in the workflow:

```yaml
workload_identity_provider: 'projects/725567398741/locations/global/workloadIdentityPools/github-actions-pool/providers/github-provider'
service_account: 'firebase-deployer@easypool-30af3.iam.gserviceaccount.com'
```

### Step 3: Remove Old Secret (Optional)

Once verified working, you can delete the old `FIREBASE_SERVICE_ACCOUNT_EASYPOOL_30AF3` secret from GitHub:
- Go to Settings → Secrets and variables → Actions
- Delete the old service account key secret

## How It Works

1. **GitHub generates OIDC token** when workflow runs
2. **Google Cloud verifies token** via Workload Identity Pool
3. **Short-lived credentials issued** to service account
4. **Firebase CLI uses credentials** automatically (via google-github-actions/auth)
5. **Credentials expire** after ~10 minutes

## Troubleshooting

### "Failed to authenticate" error

- Verify the setup script was run successfully
- Check the service account exists: `gcloud iam service-accounts list --project=easypool-30af3`
- Check workload pool exists: `gcloud iam workload-identity-pools list --location=global --project=easypool-30af3`

### Permission errors

- Ensure the service account has `roles/firebase.admin`
- Ensure workload identity binding is correct for the repository

### Manual verification

```bash
# List service accounts
gcloud iam service-accounts list --project=easypool-30af3

# Check service account permissions
gcloud projects get-iam-policy easypool-30af3 \
  --flatten="bindings[].members" \
  --filter="bindings.members:firebase-deployer@easypool-30af3.iam.gserviceaccount.com"

# List workload identity pools
gcloud iam workload-identity-pools list --location=global --project=easypool-30af3
```

## Security Notes

- No long-lived credentials stored anywhere
- Tokens are valid for ~10 minutes only
- Can restrict by repository/branch in workload identity pool
- Full audit trail in Google Cloud logs
- Same security model as backend Cloud Run deployments
