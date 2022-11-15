#!/bin/bash
cr package drupal-helm
cr upload drupal-helm
git add -A ; git commit -m 'package update and upload'; git push
sleep 240
cr index .repo
cp .cr-index/index.yaml ./
git add -A ; git commit -m 'package update and upload'; git push
sleep 240
helm repo update
helm search repo osp