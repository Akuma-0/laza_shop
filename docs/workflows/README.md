# GitHub Actions Workflow for Firebase App Distribution

This directory contains workflow templates that need to be manually copied to `.github/workflows/` due to GitHub's OAuth restrictions.

## Why is this needed?

GitHub prevents OAuth Apps (like VS Code extensions) from creating or modifying workflow files in `.github/workflows/` without the `workflow` scope. This is a security measure to prevent unauthorized automation.

## How to use:

1. **Manually copy the workflow file**:
   ```bash
   mkdir -p .github/workflows
   cp docs/workflows/firebase-distribution.yml .github/workflows/
   ```

2. **Set up repository secrets** in GitHub Settings > Secrets and variables > Actions:
   - `FIREBASE_APP_ID`
   - `FIREBASE_CLI_TOKEN` 
   - `GOOGLE_SERVICES_JSON`

3. **Commit and push** the workflow file:
   ```bash
   git add .github/workflows/firebase-distribution.yml
   git commit -m "Add Firebase App Distribution workflow"
   git push
   ```

## Files in this directory:

- `firebase-distribution.yml` - Complete GitHub Actions workflow for building and distributing Android APK to Firebase App Distribution

## Alternative CI/CD platforms:

If you're using other CI/CD platforms, adapt the workflow steps for:
- Azure DevOps Pipelines
- GitLab CI/CD
- Bitrise
- GitHub Actions (manual setup)