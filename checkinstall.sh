#!/bin/bash

FW1=16
FW2=20
COLS=`tput cols`
FW3="`echo $COLS-$FW1-$FW2 | bc`"

FIELD_1_FORMAT="%-*s"
FIELD_2_FORMAT="%-*s"
FIELD_3_FORMAT="%-*s\n"

function print3 {
    printf "$FIELD_1_FORMAT" $FW1 $1
	if [ $2 ]; then
	    printf "$FIELD_2_FORMAT" $FW2 "$2" 
	    trimmed=`echo "$3" | cut -c1-"$FW3"`
	    printf "%s\n" "$trimmed"
	else
	    echo ""
	fi
}
print3 "sudo" 	`which sudo`
print3 "sshd" 	`which sshd`
print3 "curl" 	`which curl`
print3 "mc" 	`which mc`
print3 "ruby" 	`which ruby` 	"`ruby --version`"
print3 "rails" 	`which rails` 	"`rails -v`"
print3 "rake" 	`which rake`
print3 "psql" 	`which psql` 	"`psql --version | grep psql`"
print3 "git" 	`which git` 	"`git version`"
print3 "heroku" `which heroku` "`heroku --version`"
print3 "nodejs" `which nodejs` "`nodejs --version`"
print3 "gem" 	`which gem`
print3 "nginx" `which nginx` 	"`nginx -v 2>&1`"
print3 "gcc" 	`which gcc` 	"`gcc --version | grep gcc`"
print3 "passenger" `which passenger` "`passenger -v | grep version`"
