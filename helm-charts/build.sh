#!/bin/bash
helm package drupal-helm
cr package drupal-helm
cr upload drupal-helm
cr index .repo
cp .cr-index/index.yaml ./
git add -A ; git commit -m 'package update and upload'; git push