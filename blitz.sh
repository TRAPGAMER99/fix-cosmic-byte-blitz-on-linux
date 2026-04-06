for i in XHC0 XHC1 XHC2 XHC3 XHC4; do
  echo $i | sudo tee /proc/acpi/wakeup
done


sudo modprobe xpad  

 echo "0283 0001" | sudo tee /sys/bus/usb/drivers/xpad/new_id

