#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
CameraTools
Mipay
MiuiBugReport
Browser
Calendar
MiuiCamera
MiuiGallery
MiuiVideo
Music
QuickSearchBox
talkback
greenguard
HybridPlatform
TSMClient
NextPay
Backup
MiShare
MiAod
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
rm -rf $1/priv-app/Browser/*
rm -rf $1/priv-app/MiuiGallery/*
rm -rf $1/priv-app/Music/*
rm -rf $1/priv-app/MiAod/*
rm -rf $1/app/Mipay/*
rm -rf $1/app/NextPay
rm -rf $1/app/HybridPlatfrom/*
rm -rf $1/priv-app/Mishare/*
rm -rf $1/priv-app/Backup/*
rm -rf $1/app/greenguard/*
