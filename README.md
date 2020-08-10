# lib-template

A template for new open source libraries written in TypeScript.

## Table of contents

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [lib-template](#lib-template)
  - [How to use this](#how-to-use-this)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## How to use this

First, create a new repository based on this template by clicking the green
_Use this template_ button on the
[GitHub repository homepage](https://github.com/hongaar/lib-template). Clone
your new repository and run this in a terminal:

```
$ ./init.sh
```

## GitHub configuration

- GitHub configuration is updated automatically if you install the
  [Settings app](https://github.com/apps/settings/installations/new)
- PR's are merged automatically if you install
  [probot-auto-merge](https://github.com/apps/probot-auto-merge/installations/new)
- Monitor the code quality with
  [CodeClimate](https://codeclimate.com/github/repos/new). Replace
  `<code_climate_reporter_id>` in `.github/workflows/ci.yaml` with the _Test
  Reporter ID_ obtained from CodeClimate (navigate to _Repo Settings_ > _Test
  coverage_).
- Auto-release by using
  [semantic-release](https://github.com/semantic-release/semantic-release).
  Create these repository _secrets_:
  - `NPM_TOKEN`: Enter a
    [NPM access token](https://www.npmjs.com/settings/hongaar/tokens/create)
    with _Read and Publish_ permission to publish your package to NPM.
  - `GH_TOKEN`: Enter a
    [GitHub Personal Acces Token](https://github.com/settings/tokens/new) with
    _repo_ permission. This is needed to circumvent branch protection rules when
    adding release commits.

Done! 🎉
