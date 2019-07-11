%module wiringpi

%apply unsigned char { uint8_t };

extern int  wiringPiSetup     (void) ;
extern int  wiringPiSetupSys  (void) ;
extern int  wiringPiSetupGpio (void) ;

extern void wiringPiGpioMode  (int mode) ;
extern void pullUpDnControl   (int pin, int pud) ;
extern void pinMode           (int pin, int mode) ;
extern void digitalWrite      (int pin, int value) ;
extern void pwmWrite          (int pin, int value) ;
extern int  digitalRead       (int pin) ;
extern void shiftOut          (uint8_t dPin, uint8_t cPin, uint8_t order, uint8_t val);
extern uint8_t shiftIn        (uint8_t dPin, uint8_t cPin, uint8_t order);

extern void         delay             (unsigned int howLong) ;
extern void         delayMicroseconds (unsigned int howLong) ;
extern unsigned int millis            (void) ;

extern void lcdHome        (int fd) ;
extern void lcdClear       (int fd) ;
extern void lcdDisplay     (int fd, int state) ;
extern void lcdCursor      (int fd, int state) ;
extern void lcdCursorBlink (int fd, int state) ;
extern void lcdSendCommand (int fd, unsigned char command) ;
extern void lcdPosition    (int fd, int x, int y) ;
extern void lcdCharDef     (int fd, int index, unsigned char data [8]) ;
extern void lcdPutchar     (int fd, unsigned char data) ;
extern void lcdPuts        (int fd, char *string) ;
extern void lcdPrintf      (int fd, char *message, ...) ;

extern int lcdInit (int rows, int cols, int bits,
        int rs, int strb,
        int d0, int d1, int d2, int d3, int d4,
        int d5, int d6, const int d7) ;

extern int   serialOpen      (char *device, int baud) ;
extern void  serialClose     (int fd) ;
extern void  serialPutchar   (int fd, uint8_t c) ;
extern void  serialPuts      (int fd, char *s) ;
extern int   serialDataAvail (int fd) ;
extern int   serialGetchar   (int fd) ;
extern void  serialPrintf    (int fd, char *message, ...) ;

%{
#include "wiringPi/wiringPi/wiringPi.h"
#include "wiringPi/wiringPi/wiringShift.h"
#include "wiringPi/wiringPi/wiringSerial.h"
#include "wiringPi/devLib/lcd.h"
%}
