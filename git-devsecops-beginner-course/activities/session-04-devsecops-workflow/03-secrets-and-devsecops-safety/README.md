# Activity: Secrets and DevSecOps safety

## Goal

Identify secrets, avoid committing them, and understand why pushed secrets must be treated as compromised.

## Scenario

A project contains a configuration file with a password-like value and the team must decide how to handle it safely.

## What problem does this solve?

It helps students recognize that Git history can preserve sensitive data if secrets are committed.

## Why does this exist?

Secret handling is a core DevSecOps habit. Git makes history durable, which is useful for code and dangerous for real credentials.

## What did people do before this?

Some teams placed credentials in files and trusted people not to share them.

## What was wrong or limited about the old way?

Once a secret is committed and pushed, many systems and people may have copied it already.

## Is this the simplest solution? If not, why accept the complexity?

Keeping real secrets outside Git and using example files adds process, but it avoids a high-impact security mistake.

## Trade-offs and downsides

Students must learn the difference between documented configuration and actual secret storage.

## Exercise starter files

Exercise starter file:

```text
DB_HOST=localhost
DB_USER=student
DB_PASSWORD=admin123
```

## Instructions

1. Review `exercise-starter/config.txt` and identify which value should not be stored as a real secret in Git.
2. Replace the pattern with `.env.example` and `.gitignore`.
3. Discuss incident response if a real secret was already pushed.

Example commands:

```bash
printf ".env\n" > .gitignore
printf "DB_HOST=localhost\nDB_USER=replace_me\nDB_PASSWORD=replace_me\n" > .env.example
git add .gitignore .env.example
git commit -m "Add safe environment example"
```

Explain clearly that deleting a committed secret from the latest file is not enough if it was pushed. The secret must be treated as compromised and rotated.

## Expected result

Students should be able to identify secret-like content, replace it with a safe example file, and explain why push exposure matters.

## Check your work

Review:

```bash
cat .gitignore
cat .env.example
```

Then explain in one sentence what must happen if a real secret was pushed.

## Common mistakes

- Treating demo passwords as harmless in every context.
- Believing file deletion removes the risk after a push.
- Documenting required variables by committing real values.

## Discussion questions

- What kinds of values count as secrets?
- Why is Git history part of the security risk?
- What should a team do first after discovering a real leaked secret?

## Exercise solution

See `exercise-solution/.gitignore`, `.env.example`, and `security-note.md`.
