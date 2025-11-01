# Git Hooks for Frontend Easy

This directory contains git hooks that enforce development workflow policies.

## Installation

Run the setup script to install hooks for this repository:

```bash
bash .github/hooks/setup-hooks.sh
```

Or manually configure:

```bash
git config core.hooksPath .github/hooks
chmod +x .github/hooks/pre-commit
```

## Installed Hooks

### pre-commit

**Purpose**: Protect master/main branch from direct commits

**Behavior**:
- ❌ Blocks commits directly to master/main branches
- ✅ Allows commits to develop and feature branches
- 💡 Suggests proper workflow when blocked

**Bypass** (emergency use only):
```bash
git commit --no-verify
```

## Branch Protection Policy

```
develop  ←  feature branches  ← Direct commits allowed
   ↓
master   ←  Only merges from develop
```

### Workflow

1. **Normal development**:
   ```bash
   git checkout develop
   git add .
   git commit -m "feat: your changes"
   git push origin develop
   ```

2. **Release to production** (staging → production):
   ```bash
   git checkout master
   git merge develop
   git push origin master
   ```

3. **Emergency hotfix** (if absolutely necessary):
   ```bash
   git checkout master
   git add .
   git commit --no-verify -m "hotfix: critical fix"
   git push origin master
   ```

## Disable Hooks

If you need to temporarily disable hooks:

```bash
git config --unset core.hooksPath
```

Re-enable by running the setup script again.

## Notes

- These hooks run locally only
- Each team member must install hooks individually
- Hooks are tracked in git (unlike .git/hooks)
- GitHub branch protection rules provide server-side enforcement
