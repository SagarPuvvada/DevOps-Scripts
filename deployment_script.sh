#!/bin/bash
# Deployment script

app_dir="/path/to/app"

git pull origin master
npm install
pm2 restart app
