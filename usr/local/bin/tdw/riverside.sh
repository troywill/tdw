#!/bin/sh
echo -n "Riverside" && weather.pl "Riverside, California"  | grep fahr | grep -v dew | grep -v temper
echo -n "San Gabriel" && weather.pl "San Gabriel, California"  | grep fahr | grep -v dew | grep -v temper
echo -n "Northfield" && weather.pl "Northfield, Minnesota"  | grep fahr | grep -v dew | grep -v temper
