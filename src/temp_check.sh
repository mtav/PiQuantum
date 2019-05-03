#!/bin/bash
cpu=$(</sys/class/thermal/thermal_zone0/temp)
gpu=$(sudo /opt/vc/bin/vcgencmd measure_temp)
echo "GPU $gpu"
echo "CPU temp=$((cpu/1000))'C"
