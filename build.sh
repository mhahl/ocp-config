
DIST=dist
MANIFESTS=butane

mkdir -p ${DIST}/ignition

envsubst < configs/install-config.yaml > ${DIST}/install-config.yaml
butane -p butane/00-include.yaml -d butane/ > ${DIST}/ignition/bundle.ign

