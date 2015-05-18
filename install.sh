#!/bin/sh
# Created by Trung Vo
# Simple install script

# old way
#Android_Studio_installation_dir="/Applications/Android Studio.app/Contents"
#dest_dir=${Android_Studio_installation_dir}/plugins/android/lib/templates/activities/

template_name=MaterialNavigationDrawerActivity

echo Android SDK=$ANDROID_HOME
if [ -z "$ANDROID_HOME" ]; then
    echo "ANDROID_HOME is empty"
    exit
fi
dest_dir=$ANDROID_HOME/extras/templates/activities

cp -R $template_name "$dest_dir"/$template_name
ls "$dest_dir/$template_name"
