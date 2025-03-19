#!/bin/sh

UPY_DIR="../micropython/Micropython_Vanilla/micropython"
BOARDNAME="H750VBT6_EC"
COPY_FILES="mpconfigboard.mk,mpconfigboard.h,pins.csv"

cp {$COPY_FILES} $UPY_DIR/ports/stm32/boards/$BOARDNAME
cd $UPY_DIR/ports/stm32
rm -rf build-$BOARDNAME
make BOARD=$BOARDNAME
