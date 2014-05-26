curl -L https://get.rvm.io | bash -s stable --ruby=2.1.1

# rvm and ruby will be available only after reading the rvm init script (below) 
# since it is read at login from .bashrc this line you have to logoff-login
#
# (sourcing only has effect if you tyoe it manually in the terminal)
# source ~/.rvm/scripts/rvm

# In rare cases the 1st line (curl -L ...) doesn't install ruby.
# Then you can do it by this:
# rvm install 2.1.1


