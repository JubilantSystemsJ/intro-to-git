# Activity: Manual chaos before Git

## Goal

Show why unmanaged file sharing becomes confusing and risky when multiple people change the same file.

## Scenario

Three students are asked to improve a small text file for a school website. They each work on separate copies, then a release manager must combine the results manually.

## What problem does this solve?

It helps students feel the pain Git was created to reduce: manual file sharing, unclear ownership, and difficult merge decisions.

## Why does this exist?

Students learn Git faster when they first understand the real teamwork problem behind version control.

## What did people do before this?

People often emailed files, shared chat attachments, or saved copies with names like `homepage-final-v2-really-final.txt`.

## What was wrong or limited about the old way?

It was hard to know which file was newest, who changed what, and how to combine multiple edits safely.

## Is this the simplest solution? If not, why accept the complexity?

The simplest way is still to send files around manually, but that simplicity breaks as soon as several people change the same file. Git adds process so teams can scale change safely.

## Trade-offs and downsides

Git introduces commands, history, and branching concepts that beginners must learn. The extra complexity is acceptable because it replaces much larger collaboration problems.

## Exercise starter files

`exercise-starter/homepage.txt` begins with one short line:

```text
Welcome to our school website.
```

Roles for the simulation:

```text
Student A: change welcome message
Student B: add contact information
Student C: add course information
Release manager: combine the files manually
```

## Instructions

1. Copy `exercise-starter/homepage.txt` into three student folders outside this course repository.
2. Ask Student A to change the welcome message.
3. Ask Student B to add contact information.
4. Ask Student C to add course information.
5. Send the three resulting files to the release manager.
6. Have the release manager open each file and manually combine the final content into one file.

Remote-student version:

Remote students do not edit one shared folder. Each student gets an identical local copy, edits their own file, and sends the result to a release manager who combines the files manually.

Example final combined content:

```text
Welcome to our Git class.
Contact: class@example.com
Course: Introduction to Git for DevSecOps
```

Teaching point:

```text
Git exists because manual file sharing does not scale.
```

## Expected result

Students should see that combining edits manually is slow, error-prone, and dependent on one person remembering what changed.

## Check your work

Confirm that the manually combined file matches the exercise solution:

```text
Welcome to our Git class.
Contact: class@example.com
Course: Introduction to Git for DevSecOps
```

## Common mistakes

- Two students edit the same shared file instead of separate copies.
- The release manager forgets one student’s change.
- Students assume manual file renaming is enough to manage collaboration.

## Discussion questions

- What was hardest about combining the file manually?
- How would this scale to ten people or twenty files?
- What evidence of change history was missing?

## Exercise solution

See `exercise-solution/homepage-final.txt`.
