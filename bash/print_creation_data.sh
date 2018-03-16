#! /bin/bash
myfile=$1

function print_cdata {
  file=$1
  if [ -r ${file} ]; then
    perl -MPOSIX -le 'print strftime "%Y%m%d%H%M%S", localtime((lstat)[9]) for @ARGV' ${file}
  else
    echo 'File non leggibile'
  fi
}


print_cdata ${myfile}

exit 0
