#!/bin/bash
#***** RCwrapper script to remove Plex environment variables
#***** write the environment vars to file if needed
#***** Replace with your own dirs
#***** run the RCfilmPlexPost.py with python 2.X only
echo "RCwrapper script start: $1" >> $HOME/Library/Logs/RCfilmPlexPost.log

unset LD_LIBRARY_PATH
unset PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR
unset SCRIPTPATH
unset SUPPORT_PATH


#***** call main script with argument
$HOME/bin/RCfilmPlexPost/RCfilmPlexPost.py "$1"
#echo "Skip Post Process Script" >> $HOME/Library/Logs/RCfilmPlexPost.log

echo "RCwrapper script end: $1" >> $HOME/Library/Logs/RCfilmPlexPost.log

#Experimental