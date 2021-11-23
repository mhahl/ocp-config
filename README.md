# Generate OpenShift Igntion from Butane

## Setup

1. Clone the repo.
```
git clone github.com/mhahl/ocp-config
```

2. Export Variables

The makefile will read environment variables and substitute them in the configs.

```
export BASE_DOMAIN="hahl.id.au"
export CLUSTER_NAME="infra"
export PULL_SECRET="{...}"
export SSH_KEY="..."

```


3. Run build.sh
```
bash build.sh
```

4. Ignition files / install-config are generated in dist/igntion/bundle.ign

## Add new butane

You will need to modify 00-include.yaml and the build scripts.