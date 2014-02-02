#!/bin/bash

FW1=16
#FW2=20
FW2=0
COLS=`tput cols`
FW3="`echo $COLS-$FW1-$FW2 | bc`"

FIELD_1_FORMAT="%-*s"
FIELD_2_FORMAT="%-*s"
FIELD_3_FORMAT="%-*s\n"

function print3 {
    printf "$FIELD_1_FORMAT" $FW1 $1
	if [ `echo "which $1" | sh` ]; then
	    #printf "$FIELD_2_FORMAT" $FW2 `echo "which $1" |sh`
	    trimmed=`echo "$2" | sh | cut -c1-"$FW3"`
	    printf "%s\n" "$trimmed"
	else
	    echo ""
	fi
}
print3 "sudo"		"sudo -V | grep 'Sudo version'" 
print3 "ssh" 		"ssh -V 2>&1 | grep 'SSH'"
print3 "curl" 		"curl --version | grep curl"
print3 "mc" 		"mc --version | grep Midnight"
print3 "ruby" 		"ruby --version"
print3 "rails" 		"rails -v"
print3 "rake" 		"rake --version"
print3 "psql"  		"psql --version | grep psql"
print3 "git"  		"git version"
#print3 "heroku"  	"heroku --version"
#print3 "nodejs"  	"nodejs --version"
print3 "node"  		"node --version"
print3 "gem"		"gem -v"
print3 "nginx" 		"nginx -v 2>&1"
print3 "gcc" 		"gcc --version | grep gcc"
print3 "passenger" 	"passenger -v | grep version"
print3 "java"		"java -version" 2>&1 | grep version"
