# building and uploading the helm charts

## install chart-releaser
```
$ brew tap helm/tap
$ brew install chart-releaser
```

These two directories are used by github pages to serve the helm repos

```
.cr-index
.repo
```


## Environment variables needed for package upload
```
export CR_OWNER=dbenham
export CR_GIT_REPO=osp
export CR_PACKAGE_PATH=.repo
export CR_TOKEN="<redacted>"
export CR_GIT_BASE_URL="https://api.github.com/"
export CR_GIT_UPLOAD_URL="https://uploads.github.com/"
export CR_SKIP_EXISTING=true

```

# To make and upload helm package

```
edit drupal-help/Chart.yaml <<< increment version numbers as needed >>>
cr package drupal-helm
cr upload drupal-helm
cr index .repo
cp .cr-index/index.yaml ./
git add -A ; git commit -m 'package update'; git push
```