# Teaching Notes

## Teach Git as change control, not just commands

Begin with the problem Git solves. Students remember the commands better when they understand that Git reduces confusion about who changed what, when it changed, and how to recover safely. Keep linking every command back to change control, collaboration, and safe delivery.

## Use one small project throughout

Use the same small website project across sessions. Reusing the same files helps students focus on Git behavior instead of learning a new application each hour.

## Recommended pacing

- Session 1: local history, staging, and clear commits
- Session 2: remotes, clone, push, fetch, and pull
- Session 3: branches, PR or MR review, and merge conflicts
- Session 4: hygiene, branch protection, secret handling, and CI/CD awareness

Give short demos, then let students repeat the same flow themselves.

## Advice for remote students

Do not make remote learners edit the same shared folder. Give each student the same starter files in their own local copy, then simulate collaboration through Git remotes or file exchange. Keep screen-share demos short and repeat commands in chat or course notes.

## Advice for low-bandwidth classrooms

Use the offline local-only guide or Gitea if internet access is unreliable. Keep all materials local, avoid large downloads during class, and rehearse the local bare-repo workflow before teaching.

## When to use GitHub, GitLab, Gitea, or offline local-only mode

- GitHub works well when students already have accounts and you want familiar pull request workflows.
- GitLab works well when your organization already uses merge requests and protected branches.
- Gitea is useful for lightweight self-hosted classrooms or unstable internet.
- Offline local-only mode is best when internet access is not available or student accounts are not ready.

## Important teaching points

- `origin` is a normal remote name, not magic. It is just a label.
- `upstream` is mainly used in fork workflows and is not required in every company repository.
- Merging to `main` only deploys if CI/CD is configured to do that.
- The best beginner default is a simple feature branch workflow, often taught in a GitHub Flow style.
