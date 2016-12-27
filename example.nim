# example.nim
import linuxfb, os, posix

let fd = open("/dev/fb0", O_RDWR)

# current screen size
var var_info: fb_var_screeninfo
discard ioctl(fd, FBIOGET_VSCREENINFO, addr var_info)
echo "screen is ", var_info.xres, "x", var_info.yres, " with ", var_info.bits_per_pixel, "bits/pixel"

# screen identifier
var fix_info: fb_fix_screeninfo
discard ioctl(fd, FBIOGET_FSCREENINFO, addr fix_info)
echo "screen id ", fix_info.id

discard close(fd)
