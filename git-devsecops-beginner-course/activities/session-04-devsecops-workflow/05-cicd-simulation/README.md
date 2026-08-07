# Activity: CI/CD simulation

## Goal

Show how Git changes can trigger checks and support safer delivery.

## Scenario

A team wants a simple check that warns about a fake secret before changes are merged or delivered.

## What problem does this solve?

It connects Git workflow to automation and reinforces that review and checks can work together.

## Why does this exist?

DevSecOps teams use Git not only for history, but also as the trigger point for quality and security checks.

## What did people do before this?

Checks were manual, inconsistent, or skipped entirely.

## What was wrong or limited about the old way?

Manual checks are easy to forget and hard to scale.

## Is this the simplest solution? If not, why accept the complexity?

Manual review is simpler to start with, but even a tiny automated check shows how teams reduce risk repeatedly.

## Trade-offs and downsides

Automation takes setup and can create noise if checks are too weak or too strict.

## Exercise starter files

Exercise starter README:

```markdown
# CI/CD Simulation
```

Reference workflow file is provided under `exercise-solution/.github/workflows/basic-check.yml`.

## Instructions

1. Review the workflow file.
2. Explain what event triggers it.
3. Discuss how the check would fail if a fake secret such as `admin123` appeared in the repository.
4. Compare the automated check with the manual checklist in `notes/manual-cicd-checklist.md`.

Important reminder: CI/CD is automated discipline. Merge to `main` only deploys if deployment is configured.

## Expected result

Students should understand that Git can trigger review, checks, and possibly deployment workflows, but only when those workflows are configured.

## Check your work

Read the workflow:

```bash
cat exercise-solution/.github/workflows/basic-check.yml
cat notes/manual-cicd-checklist.md
```

Confirm you can explain what happens on `push` and `pull_request`.

## Common mistakes

- Assuming every repository already has CI/CD.
- Thinking merge to `main` always means deployment.
- Treating automation as a replacement for human review.

## Discussion questions

- What is the benefit of an automated secret-like check?
- What checks would you add next for a real project?
- When is manual review still necessary?

## Exercise solution

See `exercise-solution/README.md`, the workflow file, and the manual checklist.
