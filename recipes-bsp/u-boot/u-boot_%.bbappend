DEPENDS += "swig-native"

# fix after default security flags in poky
#TOOLCHAIN_OPTIONS_append_:emux86-64 = " ${SECURITY_NOPIE_CFLAGS}"

do_compile:prepend:qemux86-64 () {
  export BUILD_ROM=y
}
UBOOT_SUFFIX:qemux86-64 = "rom"
