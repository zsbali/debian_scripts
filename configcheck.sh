#!/bin/sh



printf "sshd\t\t"
    if [ `which sshd` ]; then
	which sshd
    else
	echo ""
    fi

printf "curl\t\t"
    if [ `which curl` ]; then
	which curl
    else
	echo ""
    fi

printf "ruby\t\t"
    if [ `which ruby` ]; then
	ruby -v
    else
	echo ""
    fi

printf "rails\t\t"
    if [ `which rails` ]; then
	rails -v
    else
	echo ""
    fi

printf "rake\t\t"
    if [ `which rake` ]; then
	which rake
    else
	echo ""
    fi

printf "psql\t\t"
    if [ `which psql` ]; then
	psql --version | grep psql
    else
	echo ""
    fi

printf "git\t\t"
    if [ `which git` ]; then
	git version
    else
	echo ""
    fi

printf "heroku\t\t"
    if [ `which heroku` ]; then
	heroku --version
    else
	echo ""
    fi

printf "nodejs\t\t"
    if [ `which nodejs` ]; then
	nodejs --version
    else
	echo ""
    fi

printf "gem\t\t"
    if [ `which gem` ]; then
	gem --version
    else
	echo ""
    fi

echo ""

