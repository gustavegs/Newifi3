#!/bin/bash
# https://github.com/Hyy2001X/AutoBuild-Actions
# AutoBuild Module by Hyy2001
# AutoBuild DiyScript

Diy_Core() {
	Author=
	Default_Device=d-team_newifi-d2
	Short_Firmware_Date=true
	Default_IP_Address="192.168.10.1"
 	INCLUDE_clash= # Wait for fixes
	CPU_MODEL=mipsle
	CORE_LV=softfloat
	Clash_Config=https://clashaddons.pages.dev/clash
	INCLUDE_opt_profile=true
	FALLBACK_kernel_54=
	INCLUDE_rc_local=true
	INCLUDE_firstrun=
	INCLUDE_AutoUpdate=true
	INCLUDE_AutoBuild_Tools=true
	INCLUDE_DRM_I915=false
	INCLUDE_Theme_Argon=true
	INCLUDE_Obsolete_PKG_Compatible=false
}

Firmware-Diy() {
	case ${TARGET_PROFILE} in
	d-team_newifi-d2)
		#Replace_File CustomFiles/mac80211.sh package/kernel/mac80211/files/lib/wifi
		Replace_File CustomFiles/system_d-team_newifi-d2 package/base-files/files/etc/config system
		# Replace_File CustomFiles/Patches/102-mt7621-fix-cpu-clk-add-clkdev.patch target/linux/ramips/patches-5.4
	;;
	esac
}
