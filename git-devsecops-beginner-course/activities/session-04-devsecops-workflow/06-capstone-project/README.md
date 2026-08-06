# Activity: Capstone project

## Goal

Bring together branching, commits, review, hygiene, and safety in one small project.

## Scenario

Students receive a small website starter project and must improve it using safe Git workflow habits.

## What problem does this solve?

It gives students one realistic end-to-end exercise instead of isolated command drills.

## Why does this exist?

People learn Git best by using several habits together: branch creation, clear commits, review, merge, and security awareness.

## What did people do before this?

Students often practised each command separately without seeing how the workflow connects.

## What was wrong or limited about the old way?

That makes it harder to transfer classroom knowledge into real teamwork.

## Is this the simplest solution? If not, why accept the complexity?

It is more complex than a single mini-task, but it is the right complexity because real Git safety comes from the full workflow.

## Trade-offs and downsides

The capstone needs more coordination and time than earlier labs, especially if reviews and conflicts are included.

## Starter files

Starter project includes:

```markdown
# DevSecOps Student Site

A small website project for practising Git workflows.
```

```html
<h1>Welcome</h1>
```

```html
<h1>About</h1>
```

```html
<h1>Contact us</h1>
```

```gitignore
.env
*.log
```

```text
DB_HOST=localhost
DB_USER=replace_me
DB_PASSWORD=replace_me
```

Rules:

```text
No direct commits to main.
Every change needs a branch.
Every branch needs a pull request.
Every pull request needs review.
No secrets in Git.
Use useful commit messages.
Resolve conflicts properly.
```

Task options:

```text
feature/add-profile-page
feature/add-navigation
fix/update-contact-email
docs/add-setup-guide
security/add-env-example
docs/add-security-warning
```

## Instructions

1. Copy `starter/` into a separate practice repo.
2. Choose one task option and create a matching branch.
3. Make a small focused change.
4. Commit with a useful message.
5. Open a PR or MR, or simulate review offline.
6. Address feedback.
7. Merge safely.
8. Record the required evidence.

Suggested command flow:

```bash
git switch main
git pull origin main
git switch -c feature/add-navigation
git add .
git commit -m "Add navigation links to homepage"
git push -u origin feature/add-navigation
```

Required final evidence:

```text
1. Branch name
2. Commit message
3. Pull request or merge request
4. Review comment
5. Merge result
6. One thing learned about Git safety
```

## Expected result

Students should produce a cleaner, safer project and be able to explain the workflow decisions they used.

## Check your work

Confirm that:

```bash
git status
git log --oneline -n 5
ls
```

Also confirm the evidence list is complete.

## Common mistakes

- Working directly on `main`.
- Combining several task options in one branch.
- Forgetting to document one of the required evidence items.
- Committing example safety files but missing the explanation of why they matter.

## Discussion questions

- Which workflow rule felt most valuable?
- What part of the Git safety process would you want automated?
- How would this workflow change in a larger team?

## Reference solution

See `reference-solution/` for one completed version of the capstone project.
