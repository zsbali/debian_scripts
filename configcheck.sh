#!/bin/sh

printf "sudo\t\t"
    if [ `which sudo` ]; then
	which sudo
    else
	echo ""
    fi

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

printf "mc\t\t"
    if [ `which mc` ]; then
	which mc
    else
	echo ""
    fi

printf "ruby\t\t"
    if [ `which ruby` ]; then
	printf "%s\t" `which ruby`
	printf "%s " `ruby -v`
	printf "\n"
    else
	echo ""
    fi

printf "rails\t\t"
    if [ `which rails` ]; then
	printf "%s\t" `which rails`
	printf "%s " `rails -v`
	printf "\n"
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
	printf "%s\t" `which psql`
	printf "%s " `psql --version | grep psql`
	printf "\n"
    else
	echo ""
    fi

printf "git\t\t"
    if [ `which git` ]; then
	printf "%s\t" `which git`
	printf "%s " `git version`
	printf "\n"
    else
	echo ""
    fi

printf "heroku\t\t"
    if [ `which heroku` ]; then
	printf "%s\t" `which heroku`
	printf "%s " `heroku --version`
	printf "\n"
    else
	echo ""
    fi

printf "nodejs\t\t"
    if [ `which nodejs` ]; then
	printf "%s\t" `which nodejs`
	printf "%s " `nodejs --version`
	printf "\n"
    else
	echo ""
    fi

printf "gem\t\t"
    if [ `which gem` ]; then
	printf "%s\t" `which gem`
	printf "\n"	
    else
	echo ""
    fi

printf "nginx\t\t"
    if [ `which nginx` ]; then
	printf "%s\t" `which nginx`
	printf "%s" `nginx -v`
    else
	echo ""
    fi

printf "passenger\t"
    if [ `which passenger` ]; then
	printf "%s" `which passenger`
	printf " "
	printf "%s " `passenger -v | grep version`
	printf "\n"	
    else
	echo ""
    fi

echo ""

