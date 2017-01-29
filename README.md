# jrbeverly.icons
[![build status](/../badges/master/build.svg)](/../commits/master)

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