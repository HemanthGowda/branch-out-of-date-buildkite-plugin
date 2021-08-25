# Branch up-to-date Buildkite Plugin

Checks if the branch is up-to-date with other Branch

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - plugins:
    - HemanthGowda/branch-up-to-date#v1.0.0:
        remote: 'origin'
        branch: 'main'
```

## Configuration

### `remote` (string)

The git remote, for example `origin`. Default: `origin`

### `branch` (string)

The git branch, for example `main`. Default: `main`

## Developing

To run the tests:

```shell
docker-compose run --rm tests
```
