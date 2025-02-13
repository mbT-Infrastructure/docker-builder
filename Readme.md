# Builder image

This Container image extends the
[java-nodejs image](https://github.com/mbT-Infrastructure/docker-java-nodejs).

This image contains some useful packages and configuration to build software.

The workdir ist set to `/root/builder` at the end of the build.


## Development

To build and run for development run:
```bash
docker compose --file docker-compose-dev.yaml up --build
```

To build the image locally run:
```bash
./docker-build.sh
```
