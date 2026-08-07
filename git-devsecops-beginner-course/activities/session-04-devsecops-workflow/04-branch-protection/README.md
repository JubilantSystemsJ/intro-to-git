# Activity: Branch protection

## Goal

Explain how branch protection reduces risk around shared branches such as `main`.

## Scenario

A class or team wants to stop direct pushes to `main` and require review before merge.

## What problem does this solve?

It creates guardrails around important branches so one accidental push does not bypass review.

## Why does this exist?

Important branches often control what becomes the shared version of the project and may trigger checks or deployments.

## What did people do before this?

Some teams relied only on classroom rules or social agreement.

## What was wrong or limited about the old way?

Informal rules are easy to forget and hard to enforce consistently.

## Is this the simplest solution? If not, why accept the complexity?

Platform rules add configuration overhead, but they reduce high-risk mistakes on shared branches.

## Trade-offs and downsides

Protection rules can slow urgent changes if the process is too heavy or if approvals are not available.

## Exercise starter files

Exercise starter README:

```markdown
# Branch Protection Demo
```

## Instructions

Platform version:

- require PR or MR
- require one approval
- block direct pushes to `main`
- require checks if available

Offline version:

- classroom rule: no one pushes directly to `main`
- direct pushes must be discussed as a risk

Ask students to compare what can be enforced by a platform versus what must be enforced by team discipline in an offline lab.

## Expected result

Students should understand that branch protection is a risk-control tool, not just a platform setting.

## Check your work

If using a platform, inspect the repository settings for the protected branch rules. If offline, confirm the classroom rules are written down and understood.

## Common mistakes

- Thinking branch protection replaces code review quality.
- Allowing emergency direct pushes to become normal practice.
- Assuming checks are required even when no checks exist.

## Discussion questions

- Which branch protection rule gives the biggest safety benefit for beginners?
- What risks still remain even with branch protection?
- How would you handle urgent fixes safely?

## Exercise solution

See `exercise-solution/branch-rules.md`.
