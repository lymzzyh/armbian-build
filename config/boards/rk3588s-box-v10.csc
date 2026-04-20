# Rockchip RK3588S box board LP4 V10, vendor Android-derived DTS
BOARD_NAME="RK3588S BOX LP4 V10"
BOARDFAMILY="rockchip-rk3588"
BOARD_MAINTAINER=""
BOOTCONFIG="rock-5a-rk3588s_defconfig"
BOOT_SOC="rk3588"
KERNEL_TARGET="vendor"
FULL_DESKTOP="yes"
BOOT_LOGO="desktop"
SERIALCON="ttyS2:1500000"
BOOT_FDT_FILE="rockchip/rk3588s-box-v10.dtb"
BOOT_SCENARIO="spl-blobs"
IMAGE_PARTITION_TABLE="gpt"

function post_family_config_branch_vendor__rk3588s_box_v10_use_forked_vendor_kernel() {
	declare -g KERNELSOURCE='https://github.com/lymzzyh/linux-rockchip.git'
	declare -g KERNELBRANCH='branch:rk3588s-box-v10-vendor-support'
	declare -g KERNEL_MAJOR_MINOR='6.1'
}
