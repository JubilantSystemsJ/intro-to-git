# Activity: Branches

## Goal

Create and use branches for isolated work instead of editing directly on `main`.

## Scenario

A team wants to add a small website improvement without risking unrelated work on the main branch.

## What problem does this solve?

Branches let people work on one task at a time without disrupting shared stable work.

## Why does this exist?

Teams need safe isolation for features, fixes, documentation updates, and security changes.

## What did people do before this?

Some teams edited directly on the main line or exchanged separate folders manually.

## What was wrong or limited about the old way?

Direct changes to the main branch make review, rollback, and collaboration riskier.

## Is this the simplest solution? If not, why accept the complexity?

Editing `main` directly is simpler for one person, but branches add just enough structure to make teamwork safer.

## Trade-offs and downsides

Branches add more commands and can become messy if teams create too many or forget to merge and delete them.

## Starter files

Starter files:

```markdown
# DevSecOps Student Site
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

Example branch names:

```text
feature/add-about-page
fix/broken-contact-link
docs/update-readme
security/remove-fake-secret
```

## Instructions

Create a branch for one task and update the about page:

```bash
git switch main
git pull origin main
git switch -c feature/add-about-page
echo "<h1>About our DevSecOps class</h1>" > about.html
git add about.html
git commit -m "Add about page"
git push origin feature/add-about-page
```

Discuss how the same naming pattern can support features, fixes, documentation, and security work.

## Expected result

You should end with a new branch pushed to the remote and one focused change ready for review.

## Check your work

Run:

```bash
git branch
git status
git log --oneline -n 3
```

Confirm the current branch is `feature/add-about-page` and the change is committed.

## Common mistakes

- Editing `main` instead of creating a branch.
- Using vague branch names like `stuff`.
- Mixing multiple tasks in one branch.

## Discussion questions

- Why is one task per branch easier to review?
- What does a good branch name communicate?
- When might a short-lived fix branch be better than editing on `main`?

## Reference solution

See `reference-solution/about.html` for the updated page.
