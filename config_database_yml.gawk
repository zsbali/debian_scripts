# usage:
# gawk -f "~/debian_scripts/config_database_yml.gawk" path/to/railsapp/config/database.orig

BEGIN {}
{
    if ($_ ~ /  database:/ )
    {
        print $_;
        print "  host: localhost";
    }
    else if ( $_ ~ /  username:/ )
    {
        print "  username: railsadmin";
    }
    else if ( $_ ~ /  password:/ )
    {
        print "  password: railsadmin";
    }
    else
    {
        print $_;
    }
}

END {}
