# Activity: Origin vs upstream

## Goal

Understand when `origin` and `upstream` are used and why many repos only need `origin`.

## Scenario

A student is contributing to an official project through a fork workflow.

## What problem does this solve?

It explains a common Git naming pattern that often confuses beginners.

## Why does this exist?

Students often see `origin` and `upstream` in tutorials and assume both are always required.

## What did people do before this?

Without a clear model, people memorized remote names without understanding what they represented.

## What was wrong or limited about the old way?

That leads to cargo-cult commands and confusion during real collaboration.

## Is this the simplest solution? If not, why accept the complexity?

Many company repos only use `origin`, which is simpler. The extra `upstream` remote is worth teaching because it appears often in fork workflows.

## Trade-offs and downsides

Using both remote names adds one more concept and is unnecessary in some teams.

## Starter files

Starter content:

```markdown
# Official Project
```

Key idea:

```text
origin = my remote copy
upstream = original source project, mainly in fork workflows
```

Also remember that many company repositories only use `origin`.

## Instructions

Run the setup script:

```bash
cd scripts
bash setup-upstream-demo.sh
```

Then inspect remotes in the local clone:

```bash
git -C ../demo-workspace/student-local remote -v
```

The script demonstrates:

```bash
git remote -v
git fetch upstream
git merge upstream/main
git push origin main
```

## Expected result

The demo should simulate:

```text
official.git = upstream/original source
student-fork.git = student's fork/origin
student-local = student's working clone
```

## Check your work

Run:

```bash
git -C ../demo-workspace/student-local remote -v
git -C ../demo-workspace/student-local log --oneline --decorate -n 5
cat ../demo-workspace/student-local/README.md
```

## Common mistakes

- Assuming `upstream` is required in every repository.
- Pushing to `upstream` by mistake.
- Forgetting that remote names are just labels.

## Discussion questions

- Why is `origin` usually your fork in this model?
- When can a team ignore `upstream` completely?
- What risks appear if you forget to fetch the original project?

## Reference solution

See `reference-solution/README.md` for the final merged content.
