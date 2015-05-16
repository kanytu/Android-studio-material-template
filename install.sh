#!/bin/sh
# Created by Trung Vo
# Simple install script
Android_Studio_installation_dir="/Applications/Android Studio.app/Contents"
dest=${Android_Studio_installation_dir}/plugins/android/lib/templates/activities/
cp -R MaterialNavigationDrawerActivity "$dest"/MaterialNavigationDrawerActivity
ls "$dest"/MaterialNavigationDrawerActivity
