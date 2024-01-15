# First Challenge

## Description

1. Create a docker image that when is running should show "Full Cycle Rocks!!" in console.
2. The image size must be less than 2MB.

## Test

To validate the challenge you should run:

```sh
./scripts/test.sh
```

## Commands

### Build Image

```sh
docker build --pull --rm -f ".docker/Dockerfile" -t ${username}/fullcycle:latest .
```

#### Push Image

> Before you push the image, you must login.

```sh
docker push ${username}/fullcycle
```