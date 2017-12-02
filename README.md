# jrbeverly.icons

## Summary

A collection of scalable vector graphics (SVG) that define project and group icons.  

## Build

You can build the icons using the tool `rsvg-convert`.  To build with `rsvg-convert`, you can do the following:

```console
rsvg-convert -f svg icon.svg > output.svg
rsvg-convert -f png icon.svg > output.png
```

It is recommend to use the build scripts available in `build/` or in the local source directory. These scripts are used in the build pipeline, ensuring that all arguments and attributes are set for compilation of the icons.  These should be run from the root of the project directory.

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

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Five by Five from the Noun Project](https://thenounproject.com/term/startup/38246/).