#!/bin/bash

FROM="/cygdrive/d/BitTorrent\ Sync/Apps/"
TO=/tmp/ronbo

#rm -rf ${TO}
#mkdir -p ${TO}

FIND_ONE="find ${FROM} -type f -name '*.epub' -exec cp --verbose {} ${TO} \;"
#echo eval ${FIND_ONE}
#eval ${FIND_ONE}

FIND_TWO="find ${TO} -type f -name '*.epub' | wc -l"
echo eval ${FIND_TWO}

COUNT=$(eval ${FIND_TWO})
echo $COUNT

HALF=$((COUNT/2))
echo $HALF

FIND_THREE="find ${TO} -type f -name '*.epub' | sort | head --lines ${HALF}"
echo eval ${FIND_THREE}
eval ${FIND_THREE}

FIND_FOUR="find ${TO} -type f -name '*.epub' | sort | tail --lines ${HALF}"
echo eval ${FIND_FOUR}
eval ${FIND_FOUR}

