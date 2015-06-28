# λ Docker Haskell Cabal [![Build Status](https://travis-ci.org/lorcanmcdonald/docker-haskell-cabal.svg)](https://travis-ci.org/lorcanmcdonald/docker-haskell-cabal)
A [dockerised](https://www.docker.com) instance of
[cabal](http://hackage.haskell.org/package/cabal-install) suitable for building
[Haskell](https://www.haskell.org) projects

## Building

Once you've [installed
Docker](https://docs.docker.com/installation/#installation) you can build as usual:

```
$ docker build - -t lorcanmcdonald/cabal < Dockerfile
```

## Usage

To build a cabal project in the current directory

```
$ docker run -v $(pwd):/src/ build
```

Output can viewed via `docker logs`, or you can optionally pass the `-t` option
