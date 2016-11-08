#!/bin/sh

#
# This is free and unencumbered software released into the public domain.
# 
# Anyone is free to copy, modify, publish, use, compile, sell, or
# distribute this software, either in source code form or as a compiled
# binary, for any purpose, commercial or non-commercial, and by any
# means.
# 
# In jurisdictions that recognize copyright laws, the author or authors
# of this software dedicate any and all copyright interest in the
# software to the public domain. We make this dedication for the benefit
# of the public at large and to the detriment of our heirs and
# successors. We intend this dedication to be an overt act of
# relinquishment in perpetuity of all present and future rights to this
# software under copyright law.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
# 
# For more information, please refer to <http://unlicense.org/>
#


# EDIT THESE USER VALUES
TTY=""              # tty
COLOR="38;05;4"     # font color

TIME_H_NOW=`date '+%H' | sed -e 's/0\([0-9]\)/\1/g'`
TIME_M_NOW=`date '+%M'`
TITLE="${TIME_H_NOW}:${TIME_M_NOW}"

test ${TIME_M_NOW} -eq '00'                 &&
         BODY="It's ${TIME_H_NOW} o'clock." ||
         BODY="It's ${TIME_H_NOW}:${TIME_M_NOW}."

test -w ${TTY}  &&
    printf "[${COLOR}m${TITLE} ${BODY}[0m\n" > ${TTY}

exit $?
