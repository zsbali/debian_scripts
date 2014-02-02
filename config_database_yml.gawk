# usage:
# gawk -f "~/debian_scripts/config_database_yml.gawk" path/to/railsapp/config/database.orig

/database:/
  {
    print $_;print "  host: localhost";
    stop=1; 
  }
  
/username:/
  {
    print "  username: railsadmin";
    stop=1;
  }

/password:/
  {
    print "  password: railsadmin";
    stop=1;
  }

/.*/
  { if (!stop)
    {
      print $_
    }
    else
    {
      stop=0;
    }
  }
