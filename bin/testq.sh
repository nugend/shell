#!/usr/bin/env bash

TESTQCMD="$QSPEC -q"
RLWRAPCMD="rlwrap --multi-line --multi-line-ext=.q --filter=$DOTSHELL/vendor/rlwrap_remove_newline/remove_newline.pl --no-warnings"
TESTHCMD="$QSPEC --fail-hard"
WATCHCMD=

function watch {
    watchmedo shell-command -R -W -c "pkill -n -u `whoami` -x -f '$TESTQCMD $*'; $TESTQCMD $*" .
}

function qt {
    $TESTQCMD $*

}

function qi {
    $RLWRAPCMD $TESTHCMD $*

}

$*
