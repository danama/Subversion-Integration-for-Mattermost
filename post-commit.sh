#!/bin/sh

## *************************************************************
## * Edit the following line to suit your linux environment   *
## *************************************************************

## Python & svnlook are installed, by default, in /usr/bin/ and accessible without path defined.

## Set full path to python
## PYTHON="/usr/bin/python"

## Set full path to svnlook
## SVNLOOK="/usr/bin/svnlook"

## Set full path to post.py
POSTPY="/path/to/Subversion-Integration-for-Mattermost/post.py"


## *************************************************************
## * This sets the arguments supplied by Subversion            *
## *************************************************************

REPOS="$1"
REV="$2"

##  *************************************************************
##  * Get Author, comment and related page in Redmine repository                                    *
##  *************************************************************

## If you are using Redmine with svn repository in a project, uncomment the following related lines and and set the project name and URL (change to https:// if needed)

## PROJECT="ProjectNAME"
## PROJECTURL="http://"PATH/TO/YOUR/REDMINE/PROJECTS"/repository/${PROJECT}/revisions"

AUTHOR="$(svnlook author -r $REV $REPOS)"
LOG="$(svnlook log -r $REV $REPOS)"

COMMENT="Commit **${PROJECT}** by $AUTHOR *($LOG)*"

## COMMENT="Commit **${PROJECT}** by $AUTHOR *($LOG)* - [Changes](${PROJECTURL}/${REV}) - [Diff](${PROJECTURL}/${REV}/diff)"


## *************************************************************
## * Hand it to post.py                                        *
## *************************************************************

python "$POSTPY" "$COMMENT"
