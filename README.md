```shell
docker build -f debian.dockerfile --no-cache --tag scantarget --build-arg image=<image-to-scan> https://github.com/bap2000/microscanner.git
```

```shell
docker run --env AQUA_TOKEN=${AQUA_TOKEN} scantarget | sed -n '/<!DOCTYPE html>/,/<\/body>/p' > report/AquaMicroscannerOutput.html
```

```shell
docker run --env AQUA_TOKEN=${AQUA_TOKEN} scantarget --html --continue-on-failure | sed -n '/<!DOCTYPE html>/,/<\/body>/p' > report/AquaMicroscannerOutput.html
```
