#!/bin/sh

## mcafee-ens-adaptive-threat-protection-hotfix-version-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, McAfee Professional Services
## E-Mail: Tom_Ziegmann@McAfee.com

# This script has been verified to work on McAfee Endpoint Security 10 for Mac

FMHotfix=`cat /usr/local/McAfee/fmp/config/atp/FMConfig.xml | egrep "<Hotfixes>.*</Hotfixes>" |sed -e "s/<Hotfixes>\(.*\)<\/Hotfixes>/\1/"|tr -d " "|tr -d "\t"|tr -d "\n"|tr -d "\r"`

echo '<result>'$FMHotfix'</result>'