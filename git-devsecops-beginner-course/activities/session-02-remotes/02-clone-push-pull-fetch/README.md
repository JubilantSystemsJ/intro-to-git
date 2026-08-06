# Activity: Clone, push, pull, fetch

## Goal

Practise the most common remote collaboration commands with two local clones.

## Scenario

Two students work on the same project through a shared remote repository.

## What problem does this solve?

It shows how people get a local copy, share changes, and stay updated with each other’s work.

## Why does this exist?

Most Git teamwork depends on a reliable flow for copying repositories, sending changes, and receiving updates.

## What did people do before this?

Teams often exchanged files or copied folders manually.

## What was wrong or limited about the old way?

Changes were easy to overwrite and hard to synchronize.

## Is this the simplest solution? If not, why accept the complexity?

Using a remote plus two clones is more complex than editing one folder, but it models real collaboration clearly and safely.

## Trade-offs and downsides

Students need to understand multiple commands that sound similar, especially `pull` versus `fetch`.

## Starter files

Starter files:

```markdown
# DevSecOps Student Site
```

```html
<h1>Welcome</h1>
```

Definitions:

```text
clone = create a local copy of a repository
push = send local commits to a remote
pull = fetch remote updates and merge them locally
fetch = download remote updates without merging
```

## Instructions

Run the simulation script:

```bash
cd scripts
bash simulate-two-students.sh
```

Then inspect Student B's copy:

```bash
cd ../demo-student-b
cat index.html
git log --oneline
```

## Expected result

The script should create:

```text
demo-remote/origin.git
demo-student-a/
demo-student-b/
```

Student A should push a change and Student B should pull it and see:

```html
<h1>Welcome</h1>
<p>Added by Student A</p>
```

## Check your work

Run:

```bash
git -C ../demo-student-a log --oneline -n 2
git -C ../demo-student-b status
cat ../demo-student-b/index.html
```

## Common mistakes

- Confusing `fetch` with `pull`.
- Forgetting that a clone is a full local repository.
- Pulling from the wrong branch.

## Discussion questions

- When would you use `fetch` before `pull`?
- Why is it useful for each student to have a full clone?
- What happens if Student B edits before pulling Student A’s changes?

## Reference solution

See `reference-solution/` for the expected final content.
