mkdir -p /tmp/kaniko-config
cp /kaniko/.docker/.dockerconfigjson /tmp/kaniko-config/config.json
export DOCKER_CONFIG=/tmp/kaniko-config
/kaniko/executor \
  --context $(pwd) \
  --dockerfile $(pwd)/Dockerfile \
  --destination $1:$2 \
  --force