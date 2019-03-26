#!/bin/bash
set -e

FILENAME=$1

usage() {
  local PROG=`basename $0`
  echo "Usage: $PROG java_filename"
}

check_extension(){
  if [ ${FILENAME: -5} == ".java" ]
  then
    return 0
  else
    echo "Filetype is not java"
    return 1
  fi
}

check(){
  java -jar checkstyle-8.18-all.jar -c /google_checks.xml $FILENAME
}

if [ -z "$1" ]
  then
    echo "No argument supplied"
    usage
  else
    check_extension
    check
fi
