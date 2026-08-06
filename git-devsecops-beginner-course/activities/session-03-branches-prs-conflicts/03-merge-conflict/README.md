# Activity: Merge conflict

## Goal

Create and resolve a simple merge conflict so students understand what Git is asking them to do.

## Scenario

Two students change the same line in `index.html` in different ways and later try to combine the work.

## What problem does this solve?

It shows what happens when Git cannot safely choose the correct final content by itself.

## Why does this exist?

Conflict resolution is a normal part of teamwork, and beginners gain confidence when they see a small controlled example.

## What did people do before this?

People manually compared files and guessed which version should win.

## What was wrong or limited about the old way?

It was slow, error-prone, and gave no structured help for combining the changes.

## Is this the simplest solution? If not, why accept the complexity?

Avoiding collaboration would avoid conflicts, but that is not realistic. Git’s conflict markers make the disagreement explicit so people can resolve it carefully.

## Trade-offs and downsides

Conflicts can feel intimidating and they interrupt flow until someone makes a decision.

## Starter files

Starter page:

```html
<h1>Welcome</h1>
```

Example conflict markers:

```text
<<<<<<< HEAD
<h1>Welcome to our DevSecOps class</h1>
=======
<h1>Welcome to our Git class</h1>
>>>>>>> ...
```

## Instructions

Run the script to create the conflict:

```bash
cd scripts
bash create-conflict-demo.sh
```

Then open the conflicted file and resolve it to:

```html
<h1>Welcome to our Git for DevSecOps class</h1>
```

Finish the merge manually:

```bash
cd ../demo-workspace/student-b
git status
git add index.html
git commit -m "Resolve homepage merge conflict"
```

## Expected result

Students should see a real conflict, understand the markers, and produce one clean final line.

## Check your work

Run:

```bash
git -C ../demo-workspace/student-b status
cat ../demo-workspace/student-b/index.html
```

After resolution, the file should contain the merged heading and no conflict markers.

## Common mistakes

- Leaving conflict markers in the final file.
- Keeping only one side without thinking about the correct combined result.
- Forgetting to stage the resolved file before committing.

## Discussion questions

- Why could Git not decide the final line automatically?
- What makes a good conflict resolution?
- When is it better to talk to the other developer before resolving?

## Reference solution

See `reference-solution/index.html`.
