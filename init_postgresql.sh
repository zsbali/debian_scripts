#!/bin/bash
echo "By default, postgres creates a user named 'postgres'."
echo "We must log in is as him, and give him a password."
echo "sudo -u postgres psql"
echo "type: \password"
sudo -u postgres psql
echo ""
echo "We can create a role for the rails app if we want:"
echo "sudo -u postgres createuser -d -R -P <appname>"
echo ""
echo "we must update pg_hba.conf:"
echo "local	all	all	md5" >> /etc/postgresql/9.3/main/pg_hba.conf
echo ""
echo "then we must restart postgresql:"
/etc/init.d/postgresql restart
