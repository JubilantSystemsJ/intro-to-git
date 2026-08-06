# Troubleshooting

## Git not installed

Check with:

```bash
git --version
```

If the command fails, install Git before class or switch to a prepared machine.

## `git` not recognized

Git may not be on the system path. Restart the terminal after installation and confirm `git --version` works.

## Missing username or email

Configure identity:

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

## Wrong branch name: `master` vs `main`

Set the default once:

```bash
git config --global init.defaultBranch main
```

For an existing repo, rename carefully:

```bash
git branch -m master main
```

## Push rejected

Common causes are remote changes that have not been pulled yet, protected branch rules, or trying to push directly to `main`. Read the error message, then pull or switch to a feature branch as needed.

## Remote already exists

Check remotes:

```bash
git remote -v
```

If needed, update the URL:

```bash
git remote set-url origin <new-url>
```

## Authentication problems

Confirm the remote URL, platform login, SSH key or token setup, and whether the platform requires a personal access token instead of a password.

## Merge conflict confusion

Explain that a conflict is not a Git failure. It means two changes touched the same area and Git needs a person to choose the correct final content. Use `git status`, open the conflicted file, resolve it, then `git add` and commit.

## `.gitignore` not ignoring already tracked files

`.gitignore` only affects untracked files. If a file is already tracked, remove it from Git tracking first, then commit the change.

## Accidentally committed `.env`

If the file contains a real secret and was pushed, treat it as compromised and rotate the secret. Deleting the file later does not undo exposure.

## Students working inside the course materials repo

Stop and move them to a copied starter folder or separate practice repository. The course repository should remain the instructor materials source, not the live student Git sandbox.

## Internet failure fallback

Switch to the offline local-only guide. Use local folders, bare repositories, and manual review instead of platform pull requests.
