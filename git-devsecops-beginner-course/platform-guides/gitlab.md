# GitLab Guide

## GitLab terms

GitLab uses the term project for a repository and merge request for a review-and-merge workflow. A merge request is similar to a pull request.

## Course setup on GitLab

1. Create a course materials project.
2. Create a student template project.
3. Create student or group working projects.

## Clone a project

```bash
git clone <gitlab-project-url>
cd <project-name>
```

## Work with branches

```bash
git switch -c feature/add-homepage
git push -u origin feature/add-homepage
```

## Merge requests

Students push branches, then open merge requests for review. Reviewers leave comments, request changes, or approve when the work is ready.

## Reviewers and protected branches

If your GitLab setup supports it, require reviewers and protect `main` so students do not push to it directly.

## Optional CI

GitLab CI can be used for the CI/CD simulation activity, but it is optional. The teaching goal is the workflow, not the platform brand.

## Important clarification

Merge to `main` only causes deployment if your project has CI/CD configured to deploy on merge.
