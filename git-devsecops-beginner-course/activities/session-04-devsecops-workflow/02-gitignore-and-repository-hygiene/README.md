# Activity: Gitignore and repository hygiene

## Goal

Use `.gitignore` and review habits to keep noisy or sensitive files out of Git.

## Scenario

A project contains a log file and a configuration file, and the team wants to keep accidental junk and local secrets out of commits.

## What problem does this solve?

It teaches students to control what enters the repository before mistakes become shared history.

## Why does this exist?

Repository hygiene makes projects safer, cleaner, and easier to review.

## What did people do before this?

Teams often committed too much and cleaned it up later, or they relied on memory to avoid bad files.

## What was wrong or limited about the old way?

That leads to noisy history, accidental leaks, and harder reviews.

## Is this the simplest solution? If not, why accept the complexity?

Ignoring files and reviewing status adds a small habit, but it prevents much larger cleanup work later.

## Trade-offs and downsides

`.gitignore` rules need maintenance, and beginners can wrongly assume ignored rules affect files already tracked.

## Starter files

Starter files:

```text
DB_HOST=localhost
DB_USER=student
DB_PASSWORD=admin123
```

```text
temporary log data
```

```html
<h1>Welcome</h1>
```

## Instructions

Create ignore rules and a safe environment example:

```bash
printf ".env\n*.log\n" > .gitignore
printf "DB_HOST=localhost\nDB_USER=replace_me\nDB_PASSWORD=replace_me\n" > .env.example
git status
git add .gitignore .env.example index.html
git commit -m "Add gitignore and environment example"
```

Explain that `.gitignore` ignores untracked files, but it does not automatically ignore files that are already tracked. Always run `git status` before staging.

## Expected result

The repository should include `.gitignore` and `.env.example`, while local `.env` files and log files stay out of Git.

## Check your work

Run:

```bash
git status
cat .gitignore
cat .env.example
```

## Common mistakes

- Assuming `.gitignore` will remove an already tracked file automatically.
- Committing the real config instead of an example file.
- Forgetting to check `git status` before `git add`.

## Discussion questions

- Why is `.env.example` safer than `.env`?
- Why do logs usually not belong in Git?
- What should you do if a secret file was already committed?

## Reference solution

See `reference-solution/.gitignore` and `reference-solution/.env.example`.
