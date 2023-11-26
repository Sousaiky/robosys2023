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
[ "${out}" == "1 奇数です" ] || ng ${LINENO}

out=$(seq 2 | ./cit1)
[ "${out}" == "3 奇数です" ] || ng ${LINENO}

out=$(seq 3 | ./cit1)
[ "${out}" == "6 偶数です" ] || ng ${LINENO}

out=$(seq 4 | ./cit1)
[ "${out}" == "10 偶数です" ] || ng ${LINENO}

out=$(seq 5 | ./cit1)
[ "${out}" == "15 奇数です" ] || ng ${LINENO}

out=$(seq 6 | ./cit1)
[ "${out}" == "21 奇数です" ] || ng ${LINENO}

out=$(seq 7 | ./cit1)
[ "${out}" == "28 偶数です" ] || ng ${LINENO}

out=$(seq 8 | ./cit1)
[ "${out}" == "36 偶数です" ] || ng ${LINENO}

out=$(seq 9 | ./cit1)
[ "${out}" == "45 奇数です" ] || ng ${LINENO}

out=$(seq 10 | ./cit1)
[ "${out}" == "55 奇数です" ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./cit1)
[ "$?" != 0 ] || ng ${LINENO}

out=$(echo | ./cit1) #空文字
[ "$?" != 0 ] || ng ${LINENO}

[ "$res" == 0 ] && echo "OK"
exit $res
