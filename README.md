# utils

## run
```
docker run -it --rm --name utils utils /bin/sh
```

## publish
```
docker build -t utils -f Dockerfile .
docker login docker.pkg.github.com -u davidegaspar -p $GITHUB_TOKEN
docker tag utils docker.pkg.github.com/davidegaspar/utils/utils:latest
docker push docker.pkg.github.com/davidegaspar/utils/utils:latest
docker pull docker.pkg.github.com/davidegaspar/utils/utils:latest
```
