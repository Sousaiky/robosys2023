#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Soshi Saiki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res 1
}

res=0

### I/O ###
out=$(seq 5 | ./cit1)
[ "${out}" = 15] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./cit1)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
 
out=$(echo | ./cit1) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
  exit $res
