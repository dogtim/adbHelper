#!bin/bash
# Helper tool for using hard code adb command
# Wrap common use command

#DEFINE Global variable
STB_STATIC_IP="192.168.40.45"
BUDDYBOX_STATIC_IP="192.168.40.50"

function linkSTB(){
	adb disconnect
	adb connect $(STB_STATIC_IP)
}

function linkBuddybox(){
	adb disconnect
	adb connect $(BUDDYBOX_STATIC_IP)
}

function help(){
	echo linkSTB: connect ${STB_STATIC_IP}
	echo linkBuddybox: connect ${BUDDYBOX_STATIC_IP}
}

case ${1} in
  "help")
	help;
	;;
  "linkSTB")
	linkSTB;
	;;
  "linkBuddybox")
	linkBuddybox;
	;;
  *)
	echo "help for get more detail information"
	;;
esac