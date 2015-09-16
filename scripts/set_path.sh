#dead machines: 
# lupin homer whiley speed

csil_machine_names=(snarf dilbert beavis cartman linus megatron marge tick popeye dagwood garfield bart butthead eeyore scooby calvin yogi mickey boris wacko snoopy aeonflux tygra taz pinky bullwinkle brain dot akira kyle kenny blondie tom booboo bugs hobbes optimus shaggy sylvester racerx lisa thundarr dudley elroy)

hostname=$(hostname)
echo "local hosttname is" $hostname
#hostname="esbtl-4.engr.ucsb.edu"

machine_id=$(echo $hostname | cut -d '.' -f 1 | cut -d '-' -f 2) 
echo "remote hostname is" ${csil_machine_names[$machine_id]}


#export PATH="/cs/igert/share/anaconda/bin:/cs/igert/share/Wolfram/bin:$PATH"
#export R_LIBS="/cs/igert/share/R/lib64/R/library"
