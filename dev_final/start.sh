#!/bin/bash

git config -f $GERRIT_HOME/gerrit/etc/gerrit.config auth.type $AUTH_TYPE
$GERRIT_HOME/gerrit/bin/gerrit.sh start
if [ $? -eq 0 ] 
then
    echo "gerrit $GERRIT_VERSION is started successfully with auth.type=$AUTH_TYPE, please login to check."
	echo ""
	tail -f $GERRIT_HOME/gerrit/logs/httpd_log
else
    cat $GERRIT_HOME/gerrit/logs/error_log
fi 
