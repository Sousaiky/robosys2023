#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Soshi Saiki
# SPDX-License-Identifier: BSD-3-Clause

#!/bin/bash

ng () {
    echo "NG at Line $1"
    res=1
}

res=0

### I/O ###
out=$(seq 1 | ./plus)
[ "${out}" = "1 奇数です" ] || ng ${LINENO}

out=$(seq 2 | ./plus)
[ "${out}" = "3 奇数です" ] || ng ${LINENO}

out=$(seq 3 | ./plus)
[ "${out}" = "6 偶数です" ] || ng ${LINENO}

out=$(seq 4 | ./plus)
[ "${out}" = "10 偶数です" ] || ng ${LINENO}

out=$(seq 5 | ./plus)
[ "${out}" = "15 奇数です" ] || ng ${LINENO}

out=$(seq 6 | ./plus)
[ "${out}" = "21 奇数です" ] || ng ${LINENO}

out=$(seq 7 | ./plus)
[ "${out}" = "28 偶数です" ] || ng ${LINENO}

out=$(seq 8 | ./plus)
[ "${out}" = "36 偶数です" ] || ng ${LINENO}

out=$(seq 9 | ./plus)
[ "${out}" = "45 奇数です" ] || ng ${LINENO}

out=$(seq 10 | ./plus)
[ "${out}" = "55 奇数です" ] || ng ${LINENO}

### STRANGE INPUT ###
#out=$(echo あ | ./cit1)
#[ "$?" = 1 ] || ng ${LINENO}

out=$(echo | ./plus) #空文字
[ "$?" = 0 ] || ng ${LINENO}  

[ "$res" = 0 ] && echo "OK"
exit $res

