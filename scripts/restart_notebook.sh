#dead machines: 
# lupin homer whiley speed

#running machines
csil_machine_names=(snarf dilbert beavis cartman linus megatron marge tick popeye dagwood garfield bart butthead eeyore scooby calvin yogi mickey boris wacko snoopy aeonflux tygra taz pinky bullwinkle brain dot akira kyle kenny blondie tom booboo bugs hobbes optimus shaggy sylvester racerx lisa thundarr dudley elroy)

hostname=$(hostname)
echo "local hosttname is" $hostname
#hostname="esbtl-4.engr.ucsb.edu"

machine_id=$(echo $hostname | cut -d '.' -f 1 | cut -d '-' -f 2) 
remote_hostname=${csil_machine_names[$machine_id]}

#generate a user-specific port, accounting for a potential blacklist
s=$(md5sum <<< $(whoami))
n=$((0x${s%% *}))
i=8000
black_list="10 9526" 
while true
do
    user_port=$(( ( n % 5000 )  + i ))
    echo $black_list $user_port
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
ssh -q -f $remote_hostname.cs.ucsb.edu -L $user_port:localhost:$user_port 'killall ipython 2> /dev/null > /dev/null; sleep 3; export PATH="/cs/igert/share/anaconda/bin:/cs/igert/share/Wolfram/bin:$PATH"; export R_LIBS="/cs/igert/share/R/lib64/R/library"; cd ~//UCSBDataScienceBootcamp2015/; ipython notebook --port='"$user_port"' --no-browser 2> /dev/null' 
if [ $? ]
then
    sleep 3
    echo "Login successful!"  
    echo "Starting Google Chrome. You might need to reload the window (Ctrl+R)" 
    /usr/bin/google-chrome-stable "http://localhost:$user_port" &
else
    echo "Login failed. Contact the administrator" 
fi

export PATH="/cs/igert/share/anaconda/bin:/cs/igert/share/Wolfram/bin:$PATH"
export R_LIBS="/cs/igert/share/R/lib64/R/library"
