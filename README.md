<h1 align="center">
  <img alt="jrbeverly.icons" src="../raw/master/icon.png" width="200px" height="200px" />
  <br/>
  <a href="../" title="jrbeverly.icons readme">jrbeverly.icons</a>
</h1>

<p align="center">
  A collection of scalable vector graphics (SVG) that define project and group icons.  
</p>

<div align="center">
  <a href="/../commits/master">
    <img alt="Build Status" src="/../badges/master/build.svg" />
  </a>
  <a href="../builds/artifacts/master/download?job=convert">
    <img alt="Artifacts" src="https://img.shields.io/badge/artifacts-svg.png-green.svg?maxAge=2592000" />
  </a>
</div>
<br />

# Abstract

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