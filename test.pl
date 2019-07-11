#!/usr/bin/perl

# Borrowed from https://github.com/WiringPi/WiringPi-Perl/issues/4 - thank you ;)
use lib ".";
use wiringpi;
use constant {
    OUTPUT=>1,
    INPUT=>0,
    HIGH=>1,
    LOW=>0
};

my $TESTPIN=21;

print("Odroid wiringPi test program - Will blink PIN $TESTPIN\n");
if( wiringpi::wiringPiSetup()==-1 ){
    die 1;
}


wiringpi::pinMode($TESTPIN,OUTPUT);
while (1) {
    wiringpi::digitalWrite($TESTPIN,HIGH);
    sleep 1;
    wiringpi::digitalWrite($TESTPIN,LOW);
    sleep 1;
}
