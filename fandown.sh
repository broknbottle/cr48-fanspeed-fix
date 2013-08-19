#!/bin/bash
#
#	Slow fan in cr-48 prototype after resuming from sleep
# 	@see https://bugzilla.redhat.com/show_bug.cgi?id=895276#c18
#
#	This may have be resolved in 3.9.2+ kernels
#	
#	-- Review temperature with 'sensors' command --
#
#	related scripts /etc/pm/sleep.d/20_fan_spindown_after_resume
#

#cd /sys/class/thermal/
#echo 0 > cooling_device0/cur_state
#echo 0 > cooling_device1/cur_state
#echo 0 > cooling_device2/cur_state
#echo 0 > cooling_device3/cur_state
#echo 0 > cooling_device4/cur_state
#echo 0 > cooling_device5/cur_state
#echo 0 > cooling_device6/cur_state

	echo "0" >/sys/class/thermal/cooling_device0/cur_state
	echo "0" >/sys/class/thermal/cooling_device1/cur_state
	echo "0" >/sys/class/thermal/cooling_device2/cur_state
exit 0

