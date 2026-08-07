# GitHub Guide

## Course setup on GitHub

1. Create a course materials repository for instructor content.
2. Create a student template repository with clean exercise starter content.
3. Create group working repositories or let each student create a personal practice repository.

## Common student workflow

```text
create branch -> commit -> push -> pull request -> review/checks -> merge -> delete branch
```

This is a simple GitHub Flow model and works well for beginners.

## Clone a repository

```bash
git clone <github-repo-url>
cd <repo-name>
```

## Push a branch

```bash
git switch -c feature/add-homepage
git push -u origin feature/add-homepage
```

## Open pull requests

After pushing a branch, open a pull request in GitHub so someone can review the change before merge.

## Review pull requests

Ask reviewers to check:

- Is the change focused on one task?
- Is the commit message clear?
- Are there any unrelated files?
- Are there any secrets or unsafe files?

## Enable branch protection if available

Use branch protection rules on `main` to:

- block direct pushes
- require pull requests
- require at least one approval
- require checks if your repository has automated checks

## Optional GitHub Actions use

You can use GitHub Actions for the CI/CD simulation activity. This helps show that Git changes can trigger checks automatically.

## Important clarification

Merging to `main` only deploys if a pipeline is configured to do that. GitHub itself does not deploy your work just because a branch was merged.
