# Activity: Pull request review

## Goal

Walk through a simple review workflow where one student proposes a change and another reviews it.

## Scenario

Student A improves the project README and Student B reviews the change before merge.

## What problem does this solve?

It teaches that Git collaboration is not only about pushing code, but also about review and communication.

## Why does this exist?

Pull requests and merge requests reduce risk by letting teammates inspect changes before they become shared history on `main`.

## What did people do before this?

Teams often merged changes directly or reviewed code informally through chat or screen sharing.

## What was wrong or limited about the old way?

Review was inconsistent, easy to skip, and hard to document.

## Is this the simplest solution? If not, why accept the complexity?

Direct merge is simpler, but a review step catches mistakes and keeps collaboration visible.

## Trade-offs and downsides

Review adds time and can slow delivery if changes are too large or reviewers are unavailable.

## Exercise starter files

Exercise starter README:

```markdown
# DevSecOps Student Site
```

Exercise starter homepage:

```html
<h1>Welcome</h1>
```

## Instructions

1. Student A creates a branch and updates `README.md`.
2. Student A commits and pushes the branch.
3. Student A opens a PR or MR.
4. Student B reviews the change and leaves comments.
5. Student A updates the branch to address feedback.
6. Student B approves and the branch is merged.

Example command flow for Student A:

```bash
git switch -c docs/update-readme
printf "# DevSecOps Student Site\n\nThis project is used to learn Git for DevSecOps.\n\nIt is designed for beginner DevSecOps students.\n" > README.md
git add README.md
git commit -m "Improve README for students"
git push -u origin docs/update-readme
```

If you are offline, the instructor can simulate review manually by reading the diff and giving comments in person or in a text file.

## Expected result

The final README should be clearer, reviewed, and merged only after feedback is addressed.

## Check your work

Run:

```bash
git log --oneline -n 3
cat README.md
```

If using a platform, also confirm the PR or MR shows review activity.

## Common mistakes

- Opening a review with unrelated changes included.
- Treating review as a formality instead of checking the actual content.
- Merging before comments are addressed.

## Discussion questions

- What makes a review comment useful?
- Why should a branch stay focused on one change?
- How can review help catch security mistakes?

## Exercise solution

See `exercise-solution/README.md` and `notes/review-comment-examples.md`.
