# Activity: Branching strategies

## Goal

Compare common branching strategies and explain which one is the best beginner default.

## Scenario

A new DevSecOps team needs to choose how it organizes changes before review and merge.

## What problem does this solve?

It helps students recognize that teams structure Git work differently depending on scale, risk, and release habits.

## Why does this exist?

Students often hear several strategy names without understanding what they are for or which one to start with.

## What did people do before this?

Some teams used ad hoc branch names and inconsistent merge habits with no shared model.

## What was wrong or limited about the old way?

It produced confusion, long-lived branches, and unclear expectations for review and release.

## Is this the simplest solution? If not, why accept the complexity?

The simplest beginner answer is a feature branch workflow. Learning the other models adds complexity, but it helps students understand what they may see in real organizations.

## Trade-offs and downsides

Heavier models can add process overhead. Lighter models need discipline and good automated or manual checks.

## Starter files

Starter file:

```markdown
# Branching strategies
```

The activity uses text diagrams in `diagrams/`.

## Instructions

Read the strategy summaries and compare the diagrams. Then discuss which one fits a beginner class best.

Key summaries:

1. Feature branch workflow
   - best beginner default
   - one task = one branch = one PR
2. GitHub Flow
   - branch, commit, push, pull request, review/checks, merge, delete branch
   - merge to `main` only deploys if CI/CD is configured that way
3. Trunk-based development
   - frequent integration into one trunk or `main`
   - short-lived branches can still exist
   - avoid long-lived branches
   - needs discipline and good checks
4. GitFlow
   - heavier model
   - common branches: `main`, `develop`, `feature/*`, `release/*`, `hotfix/*`
   - teach as awareness, not beginner default
5. Environment branches
   - branches such as `dev`, `staging`, `production`
   - real pattern in some organizations
   - can drift if not carefully managed

## Expected result

Students should be able to describe the difference between the strategies and explain why a feature branch workflow is the best beginner default.

## Check your work

Review the diagrams and write or discuss one sentence answering:

```text
Which branching strategy would you teach beginners first, and why?
```

## Common mistakes

- Assuming every team uses GitFlow.
- Assuming merge to `main` always deploys.
- Confusing environment branches with deployment environments themselves.

## Discussion questions

- Why is one branch per task a strong beginner habit?
- What makes trunk-based development work well or poorly?
- When do environment branches become risky?

## Reference solution

The reference solution is the set of summaries and diagrams in this folder.
