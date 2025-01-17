# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.12
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package wiringpi;
use base qw(Exporter);
use base qw(DynaLoader);
package wiringpic;
bootstrap wiringpi;
package wiringpi;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package wiringpi;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package wiringpi;

*wiringPiSetup = *wiringpic::wiringPiSetup;
*wiringPiSetupSys = *wiringpic::wiringPiSetupSys;
*wiringPiSetupGpio = *wiringpic::wiringPiSetupGpio;
*wiringPiGpioMode = *wiringpic::wiringPiGpioMode;
*pullUpDnControl = *wiringpic::pullUpDnControl;
*pinMode = *wiringpic::pinMode;
*digitalWrite = *wiringpic::digitalWrite;
*pwmWrite = *wiringpic::pwmWrite;
*digitalRead = *wiringpic::digitalRead;
*shiftOut = *wiringpic::shiftOut;
*shiftIn = *wiringpic::shiftIn;
*delay = *wiringpic::delay;
*delayMicroseconds = *wiringpic::delayMicroseconds;
*millis = *wiringpic::millis;
*lcdHome = *wiringpic::lcdHome;
*lcdClear = *wiringpic::lcdClear;
*lcdDisplay = *wiringpic::lcdDisplay;
*lcdCursor = *wiringpic::lcdCursor;
*lcdCursorBlink = *wiringpic::lcdCursorBlink;
*lcdSendCommand = *wiringpic::lcdSendCommand;
*lcdPosition = *wiringpic::lcdPosition;
*lcdCharDef = *wiringpic::lcdCharDef;
*lcdPutchar = *wiringpic::lcdPutchar;
*lcdPuts = *wiringpic::lcdPuts;
*lcdPrintf = *wiringpic::lcdPrintf;
*lcdInit = *wiringpic::lcdInit;
*serialOpen = *wiringpic::serialOpen;
*serialClose = *wiringpic::serialClose;
*serialPutchar = *wiringpic::serialPutchar;
*serialPuts = *wiringpic::serialPuts;
*serialDataAvail = *wiringpic::serialDataAvail;
*serialGetchar = *wiringpic::serialGetchar;
*serialPrintf = *wiringpic::serialPrintf;

# ------- VARIABLE STUBS --------

package wiringpi;

1;
