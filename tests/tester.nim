
import unittest
import posix
import linuxfb
import os

const
  device = "/dev/fb0"

proc openfb(device: string): cint =
  result = open(device, O_RDWR)
  if result < 0:
    raiseOSError(OSErrorCode(errno), "could not open framebuffer " & device)

suite "linux framebuffer tests":

  setup:
    let fd = openfb(device)
    echo "opened ", fd

  test "fscreeninfo":
    var info: fb_fix_screeninfo
    let rc = ioctl(fd, FBIOGET_FSCREENINFO, addr info)
    check(rc == 0)
    # cannot test much more here since a bit too device-dependant
 
  test "vscreeninfo":
    var info: fb_var_screeninfo
    let rc = ioctl(fd, FBIOGET_VSCREENINFO, addr info)
    check(rc == 0)

    echo "screen is ", info.xres, "x", info.yres, " with ", info.bits_per_pixel, "bits/pixel"

    check(cint(info.xres) > 0 and cint(info.xres) < 65536)
    check(cint(info.yres) > 0 and cint(info.xres) < 65536)
    check(cint(info.bits_per_pixel) > 0 and cint(info.bits_per_pixel) < 64)

    let bpp = cint(info.bits_per_pixel)

    check(cint(info.red.offset) < bpp)
    check(cint(info.red.length + info.blue.length + info.green.length + info.transp.length) <= bpp)

  teardown:
    echo "close ", fd
    close(fd)
