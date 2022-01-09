# Trailhead

## Docs

- To build docs at your local PC, please run following. You can access to the docs from `http://0.0.0.0:8000`. If you edit the files at `docs/docs/source`, the docs is automatically rebuilt by `livehtml` and you can see the live feedback.

```bash
$ cd docs/environments/develop
$ sudo docker-compose up
```

## Github Actions

### Secrets

In order to run CI, following secrets have to be set from github setting page.

- **XCCV_ADMIN_AWS_ACCESS_KEY_ID**: AWS access key ID of `xccv-admin` account.
- **XCCV_ADMIN_AWS_SECRET_ACCESS_KEY_ID**: AWS secret access key ID of `xccv-admin` account.


### Workflows

- **deploy_docs**: Build trailhead docs and deploy to AWS S3.
