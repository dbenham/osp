#!/bin/bash
cr package drupal-helm
cp .cr-index/index.yaml ./
cr upload drupal-helm
git add -A ; git commit -m 'package update and upload'; git push
sleep 120
cr index .repo
git add -A ; git commit -m 'package update and upload'; git push
helm repo update