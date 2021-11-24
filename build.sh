
DIST=dist
MANIFESTS=butane

mkdir -p ${DIST}/ignition
mkdir -p ${DIST}/manifests
mkdir -p /tmp/build

# Manifests
envsubst < configs/install-config.yaml > ${DIST}/install-config.yaml
envsubst < manifests/01-console-url.yaml > ${DIST}/manifests/01-console-url.yaml

# Ignition
butane -p butane/99-chrony.yaml  > /tmp/build/99-chrony.ign
butane -p butane/10-luks.yaml    > /tmp/build/10-luks.ign
butane -p butane/00-include.yaml -d /tmp/build/ > ${DIST}/ignition/bundle.ign


