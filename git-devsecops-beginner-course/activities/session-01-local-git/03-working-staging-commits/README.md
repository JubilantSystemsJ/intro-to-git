# Activity: Working, staging, commits

## Goal

Understand how file changes move from the working directory to the staging area and then into commit history.

## Scenario

You are building a tiny student website and want to record work in small, understandable steps.

## What problem does this solve?

It teaches how Git separates unfinished edits from the exact changes you want to save in a commit.

## Why does this exist?

Teams need clean history. The staging area lets you choose what belongs in the next commit.

## What did people do before this?

Many people saved files repeatedly with no formal record of which changes belonged together.

## What was wrong or limited about the old way?

History became messy, unclear, or missing entirely.

## Is this the simplest solution? If not, why accept the complexity?

Git’s working and staging model adds one extra concept, but it gives you precise control over each commit.

## Trade-offs and downsides

The staging area can feel unfamiliar at first, and beginners sometimes forget what is staged versus unstaged.

## Exercise starter files

`exercise-starter/README.md` contains:

```markdown
# DevSecOps Student Site
```

Core idea:

```text
Working directory -> Staging area -> Commit history
```

## Instructions

Copy the exercise starter files into a separate practice repository, initialize Git, and then create three commits:

```bash
git add README.md
git commit -m "Add README"

echo "<h1>Welcome</h1>" > index.html
git add index.html
git commit -m "Add homepage"

echo "<h1>Contact us</h1>" > contact.html
git add contact.html
git commit -m "Add contact page"

git log --oneline
```

Use `git status` between steps so students can see files move from untracked to staged to committed.

## Expected result

The repository should contain three commits and the files `README.md`, `index.html`, and `contact.html`.

## Check your work

Run:

```bash
git status
git log --oneline
ls
```

You should see a clean tree and three commits in order.

## Common mistakes

- Editing files but forgetting `git add`.
- Staging the wrong file.
- Creating one large commit instead of small focused commits.

## Discussion questions

- Why might a team want separate commits for separate steps?
- What advantage does the staging area provide?
- When would a single large commit be harder to review?

## Exercise solution

See `exercise-solution/` for the expected final files.
