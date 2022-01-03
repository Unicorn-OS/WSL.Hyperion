isRunning=`genie --is-running`
echo $isRunning
if [ $isRunning == "running" ]; then echo "true" ; else genie -s; fi
