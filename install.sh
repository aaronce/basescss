
#!/bin/bash

# TODO: one time run file..

# TODO: check for dependencies
# TODO: download third party libs
# TODO: run compass start project etc..
# TODO: toggle between bourbon and compass projects on build.

# VARS
GIT_IS_AVAILABLE=""
BOURBON_PROJECT=""
COMPASS_PROJECT=""
RUBY_IS_AVAILABLE=""
RUBYGEM_IS_AVAILABLE=""


# Check if git is installed.
git --version 2>&1 >/dev/null
GIT_IS_AVAILABLE=$?

if [ $GIT_IS_AVAILABLE -eq 0 ];
then
	GIT_IS_AVAILABLE="y"
else
	echo "git is not installed"
	exit $? # exit with last cmd status
fi

# Check if ruby is installed
ruby -v 2>&1 >/dev/null
RUBY_IS_AVAILABLE=$?

if [ $RUBY_IS_AVAILABLE -eq 0 ];
then
	RUBY_IS_AVAILABLE="y"
else
	echo "ruby is not installed"
	exit $? # exit with last cmd status
fi

# Check if gem is installed
gem -v 2>&1 >/dev/null
RUBYGEM_IS_AVAILABLE=$?

if [ $RUBYGEM_IS_AVAILABLE -eq 0 ];
then
	RUBYGEM_IS_AVAILABLE="y"
else
	echo "ruby gem is not installed"
	exit $? # exit with last cmd status
fi

# Ask what type of projects to start
echo "Do you want to include compass (y / enter for no):"
read COMPASS_PROJECT

echo "Do you want to include thoughtbot/bourbon (y / enter for no):"
read BOURBON_PROJECT

