#!/bin/bash

#CONSTANTS
NL='\n';

#This is my pomodoro timer it's a work in progress

pomo ()
{

	echo -n "Enter the amount of you would like to have this process run for: ";
   	 read duration
	echo -n -e "${NL}Enter the unit of measurement for time (i.e., s/m/h): "
    	 read unit
	echo -e "${NL}This correct?${NL}Duration   Unit${NL}   ↘         ↘${NL}   ${duration}         ${unit}${NL}";

	echo "Timer is running."
	sleep ${duration}${unit};

	for i in $(seq 48)
	do
 		sleep 1.25s && echo -n -e '\a';
 		clear && echo "Time is up." && sleep .25 && clear && echo "Time is up.." && sleep .25 &&clear && echo "Time is up...";
	done
 echo -n "Initiate timer again? [Y/n]: "; read i;

 [[ $i == y ]] || [[ $i == Y ]] && pomo || exit;
} 

pomo
