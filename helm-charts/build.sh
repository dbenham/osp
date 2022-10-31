#!/bin/bash
cr package drupal-helm
cr index .repo
cr upload drupal-helm
cp .cr-index/index.yaml ./
git add -A ; git commit -m 'package update and upload'; git push
helm repo update