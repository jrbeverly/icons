# jrbeverly.icons
[![Build][build-badge]][build-link]
[![License][license-badge]][license-link]
[![Download][download-badge]][download-link]

## Summary

A collection of scalable vector graphics (SVG) that define project and group icons.  

## Build

You can build the icons using the tool `rsvg-convert`.  To build with `rsvg-convert`, you can do the following:

```console
rsvg-convert -f svg icon.svg > output.svg
rsvg-convert -f png icon.svg > output.png
```

It is recommend to use the build scripts available in `build/`.   These scripts are used in the build pipeline, ensuring that all arguments and attributes are set for compilation of the icons.  These should be run from the root of the project directory.

```console
sh build/compile.sh
```

Or if running in an environment with `rsvg-convert` installed (such as a docker container), you can do the following:

```console
sh build/build.sh
```

### Docker Environment

You can start a docker container with `rsvg-convert` installed to experiment with building the icons.  To build with `rsvg-convert`, you can do the following:

```console
sh build/run.sh
```

### GitLab CI

This project's scalable vector graphics (SVG) are built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps defined in [`.gitlab-ci.yml`](.gitlab-ci.yml).  The output of the build process is available [here](/../builds/artifacts/master/download?job=convert).  The artifacts have an expiration period to ensure that old build artifacts are properly cleaned up.

[build-badge]: /../badges/master/build.svg
[build-link]: /../commits/master

[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license-link]: LICENSE

[download-badge]: https://img.shields.io/badge/artifacts-icons.png-green.svg?maxAge=2592000
[download-link]: /../builds/artifacts/master/download?job=convert