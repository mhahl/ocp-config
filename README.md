# Generate OpenShift artifacts

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

4. Ignition files / install-config are generated in dist/

5. Upload to b2 along with 
* worker.ign
* master.ign
* bootstrap.ign

which are created from the `./openshift-install create ignition-configs --dir=install` command.
