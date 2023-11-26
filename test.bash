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
out=$(seq 1 | ./cit1)
[ "${out}" = 1 ] || ng ${LINENO}
out2=$(seq 1 | ./cit1 | tail -n 1)
[ "${out2}" = "奇数です" ] || ng ${LINENO}

out=$(seq 2 | ./cit1)
[ "${out}" = 3 ] || ng ${LINENO}
out2=$(seq 2 | ./cit1 | tail -n 1)
[ "${out2}" = "奇数です" ] || ng ${LINENO}

out=$(seq 3 | ./cit1)
[ "${out}" = 6 ] || ng ${LINENO}
out2=$(seq 3 | ./cit1 | tail -n 1)
[ "${out2}" = "偶数です" ] || ng ${LINENO}

out=$(seq 4 | ./cit1)
[ "${out}" = 10 ] || ng ${LINENO}
out2=$(seq 4 | ./cit1 | tail -n 1)
[ "${out2}" = "偶数です" ] || ng ${LINENO}

out=$(seq 5 | ./cit1)
[ "${out}" = 15 ] || ng ${LINENO}
out2=$(seq 5 | ./cit1 | tail -n 1)
[ "${out2}" = "奇数です" ] || ng ${LINENO}

out=$(seq 6 | ./cit1)
[ "${out}" = 21 ] || ng ${LINENO}
out2=$(seq 6 | ./cit1 | tail -n 1)
[ "${out2}" = "奇数です" ] || ng ${LINENO}

out=$(seq 7 | ./cit1)
[ "${out}" = 28 ] || ng ${LINENO}
out2=$(seq 7 | ./cit1 | tail -n 1)
[ "${out2}" = "偶数です" ] || ng ${LINENO}

out=$(seq 8 | ./cit1)
[ "${out}" = 36 ] || ng ${LINENO}
out2=$(seq 8 | ./cit1 | tail -n 1)
[ "${out2}" = "奇数です" ] || ng ${LINENO}

out=$(seq 9 | ./cit1)
[ "${out}" = 45 ] || ng ${LINENO}
out2=$(seq 9 | ./cit1 | tail -n 1)
[ "${out2}" = "奇数です" ] || ng ${LINENO}

out=$(seq 10 | ./cit1)
[ "${out}" = 55 ] || ng ${LINENO}
out2=$(seq 10 | ./cit1 | tail -n 1)
[ "${out2}" = "奇数です" ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./cit1)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./cit1) #空文字
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo "OK"
exit $res


