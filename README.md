# Trailhead
[![build docs](https://github.com/cvpaperchallenge/Trailhead/actions/workflows/build_docs.yaml/badge.svg)](https://github.com/cvpaperchallenge/Trailhead/actions/workflows/build_docs.yaml)
[![deploy docs](https://github.com/cvpaperchallenge/Trailhead/actions/workflows/deploy_docs.yaml/badge.svg)](https://github.com/cvpaperchallenge/Trailhead/actions/workflows/deploy_docs.yaml)

## What is Trailhead?

Trailhead is a documentation for challengers in the [cvpaper.challenge](http://xpaperchallenge.org/cv/) communitiy.
The purpose of this document is to share the research flow in the cvpaper.challenge community and accumulate useful knowledge for research.
Trailhead is publically accessible from [this link](https://d3kt8ejlbkqt6k.cloudfront.net/index.html).


## Build locally

To build docs at your local PC, please run following. You can access to the docs from `http://0.0.0.0:8000`. If you edit the files at `docs/docs/source`, the docs is automatically rebuilt by `livehtml` and you can see the live feedback.

```bash
$ cd docs/environments/develop
$ sudo docker-compose up
```

## How to contribute

If you want to contribute to Trailhead, please feel free to create Pull Request.

IMPORTANT: Please **don't** push your update to **master branch**.

## Github Actions

### Secrets

In order to run CI, following secrets have to be set from github setting page.

- **XCCV_ADMIN_AWS_ACCESS_KEY_ID**: AWS access key ID of `xccv-admin` account.
- **XCCV_ADMIN_AWS_SECRET_ACCESS_KEY_ID**: AWS secret access key ID of `xccv-admin` account.


### Workflows

- **build_docs**: Build trailhead docs.
- **deploy_docs**: Build trailhead docs and deploy to AWS S3.
