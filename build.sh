mkdir -p /kaniko/.docker
cp /kaniko/.docker/.dockerconfigjson /kaniko/.docker/config.json || true
export DOCKER_CONFIG=/kaniko/.docker
/kaniko/executor \
  --context $(pwd) \
  --dockerfile $(pwd)/Dockerfile \
  --destination $1:$2 \
  --force
  