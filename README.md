<h1 align="center">
  💻 Github Actions Linter
</h1>

<p align="center">
    Check your workflow files in PRs
</p>

## 🚀 Usage
Here is a example workflow file:
```
on:
  workflow_dispatch:
  pull_request:
    branches:
      - main
    paths:
      # run only on github workflow files
      - '.github/workflows/**'

jobs:
  linter:
    runs-on: ubuntu-latest
    permissions:
      # needed for the checkout action
      contents: read
      # needed to annotate the files in a pull request with comments
      pull-requests: write
    name: check github deploy workflow
    steps:
      - uses: houseofnerds-it/action-github-linter@master
```


## Credit

### Actions Skeleton
This template was forked from [CodelyTV/bash-github_actions-skeleton](https://github.com/CodelyTV/bash-github_actions-skeleton). I just changed the basic parameters, you can find my skeleton in [houseofnerds-it/actions-template](https://github.com/houseofnerds-it/actions-template).

### Github Linter
The Linter is a docker container from [rhysd/actionlint](https://github.com/rhysd/actionlint), so all credits go to them. I just made the github actions wrapper.

## ⚖️ License
[MIT](LICENSE)
