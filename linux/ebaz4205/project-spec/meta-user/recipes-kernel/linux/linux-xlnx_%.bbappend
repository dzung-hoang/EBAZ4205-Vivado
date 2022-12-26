FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://bsp.cfg"
SRC_URI:append = " file://disable-cpu-power-management.cfg"
SRC_URI:append = " file://disable-unused-drivers.cfg"
KERNEL_FEATURES:append = " bsp.cfg disable-cpu-power-management.cfg disable-unused-drivers.cfg"
