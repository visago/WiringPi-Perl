#!/usr/bin/perl

# Borrowed from https://github.com/WiringPi/WiringPi-Perl/issues/4 - thank you ;)
#
# This is for the 16x2 LCD IO Sheidl - https://www.hardkernel.com/shop/16x2-lcd-io-shield/
# 

use lib ".";
use wiringpi;
use POSIX qw(strftime);

use constant {
    LCD_ROW=>2,
    LCD_COL=>16,
    LCD_BUS=>4,
    PORT_LCD_RS=>7,   # GPIOY.BIT3(#83)
    PORT_LCD_E=>0,    # GPIOY.BIT8(#88)
    PORT_LCD_D4=>2,   # GPIOX.BIT19(#116)
    PORT_LCD_D5=>3,   # GPIOX.BIT18(#115)
    PORT_LCD_D6=>1,   # GPIOY.BIT7(#87)
    PORT_LCD_D7=>4    # GPIOX.BIT7(#104)
};

my $TESTPIN=21;

print("Odroid wiringPi test program - Will draw two lines in LCD\n");
if( wiringpi::wiringPiSetup()==-1 ){
    die 1;
}
my $lcdHandle = wiringpi::lcdInit(LCD_ROW, LCD_COL, LCD_BUS,
                         PORT_LCD_RS, PORT_LCD_E, PORT_LCD_D4, PORT_LCD_D5, PORT_LCD_D6, PORT_LCD_D7, 0, 0, 0, 0);

wiringpi::lcdPosition($lcdHandle, 0, 0);
wiringpi::lcdPuts($lcdHandle,"Hello ! ODROID!");
wiringpi::lcdPosition($lcdHandle, 0, 1);
wiringpi::lcdPuts($lcdHandle,strftime "%Y/%m/%d %H:%M", localtime);
