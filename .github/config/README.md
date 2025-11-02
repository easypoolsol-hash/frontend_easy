# Frontend Environment Configuration

## Single Source of Truth (SSOT)

This directory contains the **single source of truth** for environment-specific configuration.

### Why This Approach?

**Problem (Before):**
- Backend URLs hardcoded in 3+ places in CI/CD workflow
- Duplicated configuration across deploy jobs
- Error-prone updates (easy to miss updating one place)
- Violates DRY (Don't Repeat Yourself) principle

**Solution (Now):**
- ✅ **One file** (`environments.json`) for all environment config
- ✅ **Version controlled** - changes tracked in git
- ✅ **Easy to update** - change once, applies everywhere
- ✅ **Maintainable** - clear structure, easy to review

## Configuration Structure

```json
{
  "environments": {
    "develop": { ... },
    "staging": { ... },
    "production": { ... }
  },
  "firebase_project_id": "...",
  "workload_identity_provider": "...",
  "service_account": "..."
}
```

### Environment Properties

Each environment contains:
- **`name`**: Human-readable environment name
- **`backend_url`**: Backend API URL (Cloud Run stable URL)
- **`frontend_url`**: Frontend hosting URL (custom domain)
- **`firebase_site`**: Firebase Hosting site ID
- **`firebase_target`**: Firebase Hosting target name

### Cloud Run URL Strategy

Cloud Run generates **two** URLs per service:
1. **Hash-based** (UNSTABLE): `easypool-backend-dev-4wkqvnrzpa-el.a.run.app`
   - Changes on service recreation
   - ❌ Don't use in CI/CD

2. **Project-number** (STABLE): `easypool-backend-dev-781819882627.asia-south1.run.app`
   - Never changes
   - ✅ **Use this in CI/CD**

**Backend `ALLOWED_HOSTS`**: Add BOTH URLs (users can access either)
**Frontend CI/CD**: Use STABLE URL only (programmatic access)

## How to Update

### Adding a New Environment

1. Edit `environments.json`
2. Add new environment object with all required properties
3. Update `.github/workflows/ci-cd.yml` to add new deploy job
4. Commit and push

### Updating Backend URLs

**After deploying a new environment:**

1. Get the stable Cloud Run URL:
   ```bash
   gcloud run services describe easypool-backend-ENVIRONMENT \
     --region=asia-south1 \
     --format='value(status.url)'
   ```

2. Update `environments.json`:
   ```json
   {
     "backend_url": "https://easypool-backend-ENVIRONMENT-781819882627.asia-south1.run.app"
   }
   ```

3. Commit and push

**The CI/CD workflow automatically reads from this file** - no workflow changes needed!

## Governance

This follows **Fortune 500 separation of concerns**:

| Component | Managed By | Why |
|-----------|-----------|-----|
| Secret **values** (passwords, keys) | Manual `gcloud` commands | Secrets are data, not infrastructure |
| Infrastructure (IAM, Cloud Run) | Terraform/Terragrunt | Reproducible, auditable infrastructure |
| CI/CD config (this file) | Git version control | Public URLs, version tracked |

**Manual**: One-time secret creation
**Terraform**: IAM policies, resource definitions
**Config file**: URLs and deployment targets

## Example Usage in CI/CD

```yaml
- name: Load environment config
  id: config
  run: |
    BACKEND_URL=$(jq -r '.environments.develop.backend_url' ${{ env.CONFIG_FILE }})
    echo "backend_url=$BACKEND_URL" >> $GITHUB_OUTPUT

- name: Build
  uses: ./.github/actions/build-web
  with:
    api_base_url: ${{ steps.config.outputs.backend_url }}
```

This ensures:
- ✅ Single source of truth
- ✅ No hardcoded values in workflow
- ✅ Easy to maintain and update
- ✅ Clear separation of concerns
