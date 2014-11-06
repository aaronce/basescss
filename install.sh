
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


# Ask what type of project to start
echo "Do you want to include thoughtbot/bourbon (y / enter for no):"
read BOURBON_PROJECT