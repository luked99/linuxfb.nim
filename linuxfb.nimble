# Package

version       = "0.1.0"
author        = "Luke Diamand"
description   = "Wrapper for <linux/fb.h> framebuffer ioctls"
license       = "MIT"

# Dependencies

requires "nim >= 0.15.3"


task test, "Runs the test suite":
  exec "nim c -r tests/tester"
