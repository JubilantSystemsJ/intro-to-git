# Activity: Local vs remote

## Goal

Understand the difference between a local repository, a remote repository, and the remote name `origin`.

## Scenario

You already have a local website project and want a shared remote location for backup and collaboration.

## What problem does this solve?

It shows how a team moves from one person’s laptop to a shared Git destination.

## Why does this exist?

Without a remote, collaboration and backup are awkward. A remote gives the team a shared place to exchange history.

## What did people do before this?

Teams often sent zip files, shared folders, or emailed source code.

## What was wrong or limited about the old way?

Manual sharing was easy to lose track of and hard to synchronize between multiple people.

## Is this the simplest solution? If not, why accept the complexity?

Keeping everything local is simpler for one person, but a remote becomes worth it as soon as collaboration or backup matters.

## Trade-offs and downsides

Remotes add setup, access control, and synchronization commands. Beginners also need to understand that local and remote history can drift until changes are exchanged.

## Exercise starter files

Exercise starter files:

```markdown
# DevSecOps Student Site
```

```html
<h1>Welcome</h1>
```

```html
<h1>Contact us</h1>
```

## Instructions

Use the supplied script to create a local bare repository and connect a working repository to it:

```bash
cd scripts
bash setup-local-remote.sh
```

Then inspect the result:

```bash
cd ..
git remote -v
git branch -a
```

Key idea:

- Local repository: the repo on your machine where you edit files
- Remote repository: another repository used for sharing and synchronization
- `origin`: the normal default name many teams use for the main remote

## Expected result

You should end with a working repository connected to `origin`, plus a local bare repository at `remote/origin.git`.

## Check your work

Run:

```bash
git remote -v
git status
git log --oneline
```

Confirm that `origin` is configured and `main` was pushed successfully.

## Common mistakes

- Assuming `origin` is magic instead of just a name.
- Forgetting to create or push the `main` branch.
- Running cleanup commands that remove more than the demo folders.

## Discussion questions

- Why is a bare repo useful for a remote simulation?
- What can you do locally that does not affect the remote yet?
- Why might a team keep working locally before pushing?

## Exercise solution

The exercise solution matches the exercise starter files. The key outcome is the local and remote repository relationship created by the script.
