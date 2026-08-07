# Activity: Create local repository

## Goal

Create a local Git repository and make a first commit.

## Scenario

You are starting a small student website project and need Git to track your work safely from the beginning.

## What problem does this solve?

It turns a normal folder into a tracked project with history.

## Why does this exist?

A repository gives you a place where Git can store history, compare changes, and help you recover earlier work.

## What did people do before this?

People often kept plain folders with no history or made manual backup copies.

## What was wrong or limited about the old way?

There was no reliable way to track small changes over time or explain why a change happened.

## Is this the simplest solution? If not, why accept the complexity?

Using a plain folder is simpler at first, but it does not give history or change control. A repository adds a little setup so future work is safer.

## Trade-offs and downsides

Students must learn repository concepts, hidden metadata, and a few commands before seeing the full benefit.

## Exercise starter files

`exercise-starter/README.md` contains:

```markdown
# DevSecOps Student Site
```

## Instructions

Copy the exercise starter content into a new practice folder outside the course materials repository. Then run:

```bash
mkdir devsecops-student-site
cd devsecops-student-site
git init
git status
echo "# DevSecOps Student Site" > README.md
git status
git add README.md
git commit -m "Add README"
git log --oneline
```

Explain to students that `git init` creates a hidden `.git` directory that stores repository metadata and history. That hidden folder belongs inside the student practice repo, not inside this course materials repo.

## Expected result

Students should end with one local repository containing one commit and a tracked `README.md`.

## Check your work

Run:

```bash
git status
git log --oneline
ls -a
```

You should see a clean working tree, a commit named `Add README`, and a `.git` folder.

## Common mistakes

- Running `git init` inside the course materials repository.
- Forgetting to add the file before committing.
- Thinking `.git` should be copied into another repository or committed elsewhere.

## Discussion questions

- What makes a repository different from an ordinary folder?
- Why is `.git` hidden?
- Why should nested `.git` folders be avoided inside this course repo?

## Exercise solution

See `exercise-solution/README.md`.
