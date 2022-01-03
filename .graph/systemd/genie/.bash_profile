running=`genie --is-running`
echo $running
if [ $running == "running" ]; then echo "true" ; else genie -s; fi
