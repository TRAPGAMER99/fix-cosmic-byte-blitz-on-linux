# Make sure to read whole readme first before running the script file
# fix-cosmic-byte-blitz-on-linux
This will help you to fix your Cosmic Byte Blitz controller on Linux :P

Hello to ya all :P
Its Krishy Here;

The Cosmic Byte Blitz is an excellent Bang for your buck , but unfortunately , it doesnt work with Linux , Its Dongle detects Linux enviorment and auto switch to Android mode , which means , Generic controller and no rumble 

Hopefully , after a ton of tries , ive found a way to fix all of this and with the help of the community 

//

The fix -

first , Install xpad driver for your distro

for Ubuntu/Linux Mint
' sudo apt install xpad'
for Fedora/RHEL
' sudo dnf install xpad'
for Arch
' #please visit chatgpt for it '

//Now load that kernel module
' sudo modprobe xpad '

//Now module is loaded 

# now u need to trick dongle into xinput mode 
//
# put ur laptop/pc to sleep , by using 
' systemctl suspend '
 or if it doesnt work 

'
for i in XHC0 XHC1 XHC2 XHC3 XHC4; do
  echo $i | sudo tee /proc/acpi/wakeup
done
'

# Use this command to ignore system intterrupts , also if this doesnt work , please adjust the code acording to your system using some  AI

# After the system is suspended , the lights on the controller will turn off , wait for a second or two , then press home button on the controller , and it should automatically switch to xinput mode ( the first two lights will turn on )
# After this , wake ur system , now controller will be on xinput mode 


# Now , Blitz dont use true xinput , it kinda fakes it , so ur system cant directly use it for games and stuff 
# So , run this command to fix this 

'  echo "0283 0001" | sudo tee /sys/bus/usb/drivers/xpad/new_id '

# Note : If it doesnt work or ur system detects it as Nintendo Controller , repeat the above steps again



