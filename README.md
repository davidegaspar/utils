# utils

## run
```
docker run -it --rm --name utils utils /bin/sh
```

## build
```
docker build --target server -t utils -f Dockerfile .
```

## publish

## github
```
export GITHUB_TOKEN=***
docker build -t utils -f Dockerfile .
docker login docker.pkg.github.com -u davidegaspar -p $GITHUB_TOKEN
docker tag utils docker.pkg.github.com/davidegaspar/utils/utils:latest
docker push docker.pkg.github.com/davidegaspar/utils/utils:latest
docker pull docker.pkg.github.com/davidegaspar/utils/utils:latest
```

## dockerhub
```
export DOCKERHUB_USER=davidegaspar
export DOCKERHUB_TOKEN=***
echo $DOCKERHUB_TOKEN | docker login -u $DOCKERHUB_USER --password-stdin
docker tag utils davidegaspar/utils:latest
docker push davidegaspar/utils:latest
docker pull davidegaspar/utils:latest
```