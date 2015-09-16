# Luca Foschini (2015)
#
# run with:
#
#    source print_remote.sh
#
# The script prints the coordinates of the remote machine (on csil) that companion script restart_notebook.sh will access

# md5sum is called "md5" on mac
echo | md5sum >/dev/null 2>/dev/null  || alias md5sum=md5

#alive machines
csil_machine_names=(snarf dilbert beavis cartman linus megatron marge tick popeye dagwood garfield bart butthead eeyore scooby calvin yogi mickey boris wacko snoopy aeonflux tygra taz pinky bullwinkle brain dot akira kyle kenny blondie tom booboo bugs hobbes optimus shaggy sylvester racerx lisa thundarr dudley elroy)

hostname=$(hostname)
echo "local hosttname is" $hostname

#extracts a local machine id
n=$(hostname | md5sum | tr -dc [0-9] | tail -c 5)
machine_id=$(( ( n % 43 ) ))
remote_hostname=${csil_machine_names[$machine_id]}

echo "connect with:"
echo "ssh YOURUSERNAME@$remote_hostname.cs.ucsb.edu"
