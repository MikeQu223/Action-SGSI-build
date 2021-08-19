#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

find . -iname '*nfc*' -exec rm -rf {} \;

systemdir=$1

apps_dir="
DataMigration
Email
Life
Reader
RemoteCooperation
VideoClips
DesktopBackup
FamilyGuard
Phonesky_CN
Camera
NrNetworkSettingApp
MzStore
mCareNew
ARruler
"
for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done
