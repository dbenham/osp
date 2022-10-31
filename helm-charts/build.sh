#!/bin/bash
cr package drupal-helm
cr index .repo
cp .cr-index/index.yaml ./
cr upload drupal-helm
git add -A ; git commit -m 'package update and upload'; git push
helm repo update