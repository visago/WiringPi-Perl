# WiringPi for Perl

WiringPi: An implementation of most of the Arduino Wiring functions for the Odroid
boxes 

# Quick Build

## Requirements

```
sudo apt-get install swig3.0 libperl-dev
```

## Building

Clone this repo: `git clone http://github.com/visago/WiringPi-Perl`

Enter the directory: `cd WiringPi-Perl`

Run the build script: `./build.sh`

## Testing

Run `./test.pl` to import and test the module by flipping the TESTPIN (default 21) high and low every second

Use `sudo perl -d -e 1` to play with the library in interactive mode.

#Note

This is a wrapper around Gordon Henderson's WiringPi, full details of the library here: http://www.wiringpi.com

This was forked from https://github.com/WiringPi/WiringPi-Perl which doesn't support Odroids.
