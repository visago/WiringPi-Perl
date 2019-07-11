#!/bin/bash
echo "Updating submodule..."
git submodule update --init

echo "Generating bindings..."
swig -perl wiringpi.i

CORE=`perl -MConfig -e 'print $Config{archlib}'`/CORE
WIRINGPI=wiringPi/wiringPi

echo "Cleaning up old  *.o *.so files"
rm -rf *.o *.so

echo "Building against: $CORE"

gcc -fpic -c -Dbool=char -I$CORE wiringpi_wrap.c \
$WIRINGPI/wiringSerial.c \
$WIRINGPI/wiringShift.c \
$WIRINGPI/wiringPi.c \
$WIRINGPI/softPwm.c \
$WIRINGPI/softTone.c \
-D_GNU_SOURCE

gcc -shared wiringPi.o \
softPwm.o \
softTone.o \
wiringSerial.o \
wiringShift.o \
wiringpi_wrap.o \
-lwiringPi -lwiringPiDev \
-o wiringpi.so
