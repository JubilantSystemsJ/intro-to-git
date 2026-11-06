# intro-to-git

This repository contains generated course materials for the beginner Git and DevSecOps course under `git-devsecops-beginner-course/`.

Use the validation script after changes:

```bash
bash tests/validate-course.sh
```

The implementation checklist for this delivery is in `docs/implementation-plans/git-devsecops-beginner-course-checklist.md`.

## Node tests

Node.js 18 or later is required. Run the repository-owned tests from the repository root:

```sh
npm run test
```

The built-in Node test runner checks that the CI/CD simulation activity README references its workflow and manual checklist files.
