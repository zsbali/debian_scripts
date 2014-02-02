# usage:
# gawk -f "~/debian_scripts/config_database_yml.gawk" path/to/railsapp/config/database.orig

BEGIN {
    $stop = "false"
}
{
    if ($_ ~ /  database:/ )
    {
        print $_;
        print "  host: localhost";
        $stop = "true";
    }
    else if ( $_ ~ /  username:/ )
    {
        print "  username: railsadmin";
        $stop = "true";
    }
    else if ( $_ ~ /  password:/ )
    {
        print "  password: railsadmin";
        $stop = "true";
    }
    else if ( $stop == "false" )
    {
        print $_;
    }
    
    $stop = "false"
}

END {}
