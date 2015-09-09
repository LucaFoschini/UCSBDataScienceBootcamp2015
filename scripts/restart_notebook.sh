# Luca Foschini (2015)
#
# run with:
#
#    source restart_notebook.sh
#
# The script starts a notebook on a remote workstation on csil and forwards the connection back to the local workstation
#
# The remote workstation is mapped to the local one using the list "csil_machine_names", assuming the local name ends in -N where 
# N is an integer <= 43 (the length of the csil_machine_names list
#
# The port chosen (both remote and local) to run the server on is a deterministic function of the username in the range 8000-13000


#dead machines: 
# lupin homer whiley speed

# md5sum is called "md5" on mac
echo | md5sum >/dev/null 2>&1  || alias md5sum=md5

#alive machines
csil_machine_names=(snarf dilbert beavis cartman linus megatron marge tick popeye dagwood garfield bart butthead eeyore scooby calvin yogi mickey boris wacko snoopy aeonflux tygra taz pinky bullwinkle brain dot akira kyle kenny blondie tom booboo bugs hobbes optimus shaggy sylvester racerx lisa thundarr dudley elroy)

hostname=$(hostname)
echo "local hosttname is" $hostname

#extracts a local machine id
n=$(hostname | md5sum | tr -dc [0-9] | tail -c 5)
machine_id=$(( ( n % 43 ) ))
remote_hostname=${csil_machine_names[$machine_id]}

#generate a user-specific port, accounting for a potential blacklist
n=$(whoami | md5sum | tr -dc [0-9] | tail -c 5)
i=8000
black_list="10 9526" 
while true
do
    user_port=$(( ( n % 5000 )  + i ))
    if [[ $black_list =~ $user_port ]]
    then
	i=$(( i + 1 ))
    else
        break
    fi	
done

#kills notebooks currently in use, locally and remotely
echo "Starting notebooks on remote hostname" $remote_hostname "port" $user_port
pkill -f $remote_hostname 
ssh -Y -q -f $remote_hostname.cs.ucsb.edu -L $user_port:localhost:$user_port 'killall ipython 2> /dev/null > /dev/null; sleep 3; export PATH="/cs/igert/share/anaconda/bin:/cs/igert/share/Wolfram/bin:$PATH"; export R_LIBS="/cs/igert/share/R/lib64/R/library"; cd ~//UCSBDataScienceBootcamp2015/; ipython notebook --port='"$user_port"' --no-browser 2> /dev/null'
if [ $? ]
then
    sleep 3
    echo "Login successful!"  
    echo "Starting Google Chrome. You might need to reload the window (Ctrl+R)"
    echo "The notebook can be found at the addres" "http://localhost:$user_port"
    /usr/bin/google-chrome-stable "http://localhost:$user_port" &
else
    echo "Login failed. Contact the administrator" 
fi

export PATH="/cs/igert/share/anaconda/bin:/cs/igert/share/Wolfram/bin:$PATH"
export R_LIBS="/cs/igert/share/R/lib64/R/library"
