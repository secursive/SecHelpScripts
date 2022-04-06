#!/bin/bash

[[ -z "${LIBNAME}" ]] && echo "Usage: LIBNAME=libnss $0" && exit

if [ $# -ne 0 ]
then
  ldd $1 2>&1 | grep "$LIBNAME" 2>&1 >/dev/null
  if [ $? -eq 0 ]
  then
    echo "$1"
  fi
  exit
fi

find / -type f -executable -exec $0 {} \;
