# jrbeverly.icons
[![build status](/../badges/master/build.svg)](/../commits/master)[![Artifacts](https://img.shields.io/badge/artifacts-svg.png-green.svg?maxAge=2592000)](https://gitlab.com/api/v3/projects/2219058/builds/artifacts/master/download?job=convert)

A collection of scalable vector graphics (SVG) that define project and group icons.  

## GitLab CI

This project's scalable vector graphics (SVG) are built by [GitLab CI][ci], following the steps defined in [`.gitlab-ci.yml`](.gitlab-ci.yml):

```
convert_png:
  stage: build
  script:
    - apk --no-cache add librsvg make
    - make build
  artifacts:
    paths:
      - bin/*
```