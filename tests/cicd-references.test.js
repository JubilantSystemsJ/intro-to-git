const assert = require("node:assert/strict");
const { existsSync, readFileSync } = require("node:fs");
const path = require("node:path");
const { test } = require("node:test");

const repositoryRoot = path.resolve(__dirname, "..");
const activityDirectory = path.join(
  repositoryRoot,
  "git-devsecops-beginner-course",
  "activities",
  "session-04-devsecops-workflow",
  "05-cicd-simulation",
);

test("CI/CD simulation README references existing workflow and checklist files", () => {
  const activityReadme = readFileSync(path.join(activityDirectory, "README.md"), "utf8");
  const references = [
    "exercise-solution/.github/workflows/basic-check.yml",
    "notes/manual-cicd-checklist.md",
  ];

  for (const reference of references) {
    assert.ok(activityReadme.includes(reference), `Activity README is missing ${reference}`);
    assert.ok(
      existsSync(path.resolve(activityDirectory, reference)),
      `File does not exist: ${reference}`,
    );
  }
});
