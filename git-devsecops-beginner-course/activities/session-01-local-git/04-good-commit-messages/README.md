# Activity: Good commit messages

## Goal

Compare weak commit messages with clear ones and practise writing messages that help teammates.

## Scenario

A team is reviewing project history and needs commit messages that explain what changed in a useful way.

## What problem does this solve?

It reduces confusing history like `stuff` or `done` and replaces it with messages that support review and troubleshooting.

## Why does this exist?

Commit messages become part of the project record. Good messages help future teammates understand the intent behind a change.

## What did people do before this?

Some teams used vague messages or relied on memory, chat, or ticket titles.

## What was wrong or limited about the old way?

History became hard to search and hard to trust.

## Is this the simplest solution? If not, why accept the complexity?

Writing a clear message takes a little more thought, but it saves time every time someone reads the history later.

## Trade-offs and downsides

Good commit messages require discipline and may feel slower at first.

## Starter files

Bad examples:

```text
stuff
new thing
bug
work
done
final changes
```

Starter page:

```html
<h1>About</h1>
```

## Instructions

1. Review `starter/bad-commit-messages.txt`.
2. Discuss why each example is weak.
3. Edit `about.html` to make the heading more descriptive.
4. Make a commit with a useful message such as:

```bash
git add about.html
git commit -m "Add clearer about page heading"
```

Good examples:

```text
Add about page
Fix spelling mistake in README
Update contact email
Add navigation links
Remove unused test file
Update homepage heading
```

Bad examples:

```text
stuff
new thing
bug
work
done
final changes
```

## Expected result

Students should be able to explain why clear messages improve collaboration and produce a better message for the change they made.

## Check your work

Run:

```bash
git log --oneline -n 3
```

Confirm the new commit message explains the change clearly.

## Common mistakes

- Writing messages that describe effort rather than outcome.
- Using messages that are too broad for a small commit.
- Changing many things but writing a message that only describes one of them.

## Discussion questions

- What information makes a commit message useful?
- How might a good message help during an incident review?
- When should a commit be split into smaller changes?

## Reference solution

See `reference-solution/improved-commit-messages.txt` and `reference-solution/about.html`.
